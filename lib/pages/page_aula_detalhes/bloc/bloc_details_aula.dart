
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ritmos_de_violao_premium/models/api_response.dart';
import 'package:ritmos_de_violao_premium/models/conteudo.dart';
import 'package:ritmos_de_violao_premium/utils/enums.dart';
import 'package:rxdart/rxdart.dart';


class DetailhesAulaBloc {
  final firestoreRef = FirebaseFirestore.instance;

  final _loadingStream = BehaviorSubject<bool>.seeded(true);
  Sink<bool> get sinkLoading => _loadingStream.sink;
  Stream<bool> get streamLoading => _loadingStream.stream;


  final _response = BehaviorSubject<ApiResponse>();
  Stream<ApiResponse> get streamResponse => _response.stream;
  Sink<ApiResponse> get sinkResponse => _response.sink;

  bool get isClosed => _response.isClosed;

  Future<void> getInfoVideoAtual(String uuid) async {
    try {
      sinkLoading.add(true);
      Conteudo conteudo;
      DocumentSnapshot res1 = await firestoreRef.collection("videos").doc(uuid).get();

      Map<String,dynamic> map = res1.data() as Map<String, dynamic>;

      QuerySnapshot querySnapshot = await firestoreRef.collection("videos").doc(
          uuid).collection("links").get();

      List<QueryDocumentSnapshot> docs = querySnapshot.docs;
      if(docs.isNotEmpty){
        DocumentSnapshot documentSnapshot = docs.first;
        var map2 = documentSnapshot.data() as Map<String, dynamic>;
        map["leitura"] = map2;
      }

      conteudo = Conteudo.fromJsonFull(map);
      _response.sink.add(ApiResponse.ok(result: conteudo, msg: "Sucesso ao recuperar conteúdo!", codeEnum: TypeResponse.SUCCESS));
      sinkLoading.add(false);
    } on Exception catch (e) {
      _response.sink.add(ApiResponse.ok(result: "", msg: "Falha ao recuperar conteúdo!", codeEnum: TypeResponse.FAIL));

      sinkLoading.add(false);

    }

  }
}

