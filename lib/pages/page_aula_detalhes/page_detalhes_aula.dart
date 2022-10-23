import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pod_player/pod_player.dart';
import 'package:ritmos_de_violao_premium/models/api_response.dart';
import 'package:ritmos_de_violao_premium/models/conteudo.dart';
import 'package:ritmos_de_violao_premium/pages/page_aula_detalhes/bloc/bloc_details_aula.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/utils/enums.dart';
import 'package:ritmos_de_violao_premium/widgets/custom_toolbar.dart';
import 'package:shimmer/shimmer.dart';

class PageDetalhesAula extends StatefulWidget {
  const PageDetalhesAula({Key? key}) : super(key: key);

  @override
  State<PageDetalhesAula> createState() => _PageDetalhesAulaState();
}

class _PageDetalhesAulaState extends State<PageDetalhesAula> {

  final firestoreRef = FirebaseFirestore.instance;
  PodPlayerController? controller;
  bool firstAccess = true;
  int lastSended = -1;
  late Conteudo conteudo;
  DetailhesAulaBloc blocDetalhesAula = DetailhesAulaBloc();

  @override
  void initState() {
    super.initState();


  }


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if(controller != null){
      if(!controller!.isFullScreen){
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);
      }
    }

    if(firstAccess){
      firstAccess = false;
      conteudo = ModalRoute.of(context)!.settings.arguments as Conteudo;
      blocDetalhesAula.getInfoVideoAtual(conteudo.uuid!);

      controller = PodPlayerController(
        playVideoFrom: getPlayVideoFrom(conteudo.url!.toString()),
      )..initialise();
      if(controller != null){
        controller!.addListener((){
          if(controller != null){
            if(controller!.currentVideoPosition.inSeconds != lastSended){
              lastSended = controller!.currentVideoPosition.inSeconds;
            }
          }
        }
        );
      }

    }
  }

  PlayVideoFrom getPlayVideoFrom(String url) {
    return url.contains("vimeo")?
    PlayVideoFrom.vimeo(url.split("/").last) :
    PlayVideoFrom.youtube(url);
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: StreamBuilder<bool>(
        stream: blocDetalhesAula.streamLoading,
        initialData: true,
        builder: (context, snapshot) {

          bool loading = snapshot.data ?? true;
          if(loading){
            return _loadingDetalhesAula();
          }
          return CustomScrollView(
            slivers: [
              CustomToolbar(
                  context: context,
                  colorLeadingIcon: Colors.blue,
                  backgroundColor: Colors.white,
                  onTapLeading: (){
                    controller!.pause();
                    Navigator.pop(context);
                  }, title: "Voltar", onActionClicked: () {  }),
              SliverToBoxAdapter(
                child: PodVideoPlayer(controller: controller!),
              ),
              SliverToBoxAdapter(
                child: StreamBuilder<ApiResponse>(
                  stream: blocDetalhesAula.streamResponse,
                  builder: (context, snapshot) {

                    if(snapshot.data == null){
                      return _loadingDetalhesAula();
                    }

                    ApiResponse apiResponse = snapshot.data as ApiResponse;
                    TypeResponse typeResponse = apiResponse.codeEnum as TypeResponse;
                    switch(typeResponse){

                      case TypeResponse.SUCCESS:

                        Conteudo conteudoRes = apiResponse.result as Conteudo;
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: getReferenceHeight(context) * 0.22,),
                              Text(conteudoRes.titulo!, style: TextStyle(
                                  fontSize: getReferenceHeight(context) * 0.23,
                                  fontWeight: FontWeight.w600
                              ),),
                              // if(conteudoRes.leitura != null)
                              // Container(
                              //   decoration: BoxDecoration(
                              //       border: Border.all(color: Colors.black, width: 1),
                              //       borderRadius: BorderRadius.circular(6)
                              //   ),
                              //   child:  Padding(
                              //     padding:  EdgeInsets.all(8.0),
                              //     child: ListTile(
                              //       title: Text(conteudoRes.leitura!.titulo.toString(), style: TextStyle(
                              //           color: Colors.blue
                              //       ),),
                              //       trailing: Icon(Icons.link),
                              //       subtitle: Text(conteudoRes.leitura!.subtitulo.toString()),
                              //     ),
                              //   ),
                              // )
                            ],
                          ),
                        );
                      case TypeResponse.FAIL:
                        return Center(
                          child: Text("Falha ao buscar dados"),
                        );
                    }
                  }
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: getReferenceHeight(context) * 0.2),
              ),
            ],
          );
        }
      ),
    );
  }
  _loadingDetalhesAula() {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Shimmer.fromColors(
        baseColor: Colors.grey[300] as Color,
        highlightColor: Colors.grey[100] as Color,
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            SizedBox(height: getReferenceHeight(context) * 0.2),
            Container(
              height: getReferenceHeight(context) * 0.3,
              width: size.width,
              margin: EdgeInsets.only(
                  left: size.width * 0.05, right: size.width * 0.35),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    getReferenceHeight(context) * 0.2),
                color: Colors.white,
              ),
            ),
            SizedBox(height: getReferenceHeight(context) * 0.1),
            Container(
              width: double.infinity,
              height: getReferenceHeight(context) * 3,
              margin: EdgeInsets.only(
                  left: size.width * 0.05, right: size.width * 0.05),
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.circular(getReferenceHeight(context) * 0.2),
                color: Colors.white,
              ),
            ),
            SizedBox(height: getReferenceHeight(context) * 0.2),
            Container(
              height: getReferenceHeight(context) * 0.3,
              width: size.width,
              margin: EdgeInsets.only(
                  left: size.width * 0.05, right: size.width * 0.35),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    getReferenceHeight(context) * 0.2),
                color: Colors.white,
              ),
            ),
            SizedBox(height: getReferenceHeight(context) * 0.1),
            Container(
              width: double.infinity,
              height: getReferenceHeight(context) * 3,
              margin: EdgeInsets.only(
                  left: size.width * 0.05, right: size.width * 0.05),
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.circular(getReferenceHeight(context) * 0.2),
                color: Colors.white,
              ),
            ),
            SizedBox(height: getReferenceHeight(context) * 0.2),
            Container(
              height: getReferenceHeight(context) * 0.3,
              width: size.width,
              margin: EdgeInsets.only(
                  left: size.width * 0.05, right: size.width * 0.35),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    getReferenceHeight(context) * 0.2),
                color: Colors.white,
              ),
            ),
            SizedBox(height: getReferenceHeight(context) * 0.1),
            Container(
              width: size.width,
              height: getReferenceHeight(context) * 3,
              margin: EdgeInsets.only(
                  left: size.width * 0.05, right: size.width * 0.05),
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.circular(getReferenceHeight(context) * 0.2),
                color: Colors.white,
              ),
            ),
            SizedBox(height: getReferenceHeight(context) * 0.2),
            Container(
              height: getReferenceHeight(context) * 0.3,
              width: size.width,
              margin: EdgeInsets.only(
                  left: size.width * 0.05, right: size.width * 0.35),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    getReferenceHeight(context) * 0.2),
                color: Colors.white,
              ),
            ),
            SizedBox(height: getReferenceHeight(context) * 0.1),
            Container(
              width: size.width,
              height: getReferenceHeight(context) * 3,
              margin: EdgeInsets.only(
                  left: size.width * 0.05, right: size.width * 0.05),
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.circular(getReferenceHeight(context) * 0.2),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

}



