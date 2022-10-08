import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pod_player/pod_player.dart';
import 'package:ritmos_de_violao_premium/data/curso_data.dart';
import 'package:ritmos_de_violao_premium/models/conteudo.dart';
import 'package:ritmos_de_violao_premium/models/modulo.dart';
import 'package:ritmos_de_violao_premium/pages/page_modulos_curso/widgets/videos_carrosel.dart';
import 'package:ritmos_de_violao_premium/styles/app_colors.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/styles/app_fonts.dart';
import 'package:ritmos_de_violao_premium/utils/app_routes.dart';
import 'package:ritmos_de_violao_premium/widgets/custom_toolbar.dart';

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

  @override
  void initState() {
    super.initState();
    // CursoData.getModulosCurso().forEach(
    //     (e){
    //       firestoreRef.collection("modulos").doc().set(
    //              e.toJson()
    //       );
    //     }
    // );

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
      body: CustomScrollView(
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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(conteudo.titulo!, style: TextStyle(
                fontSize: getReferenceHeight(context) * 0.23,
                fontWeight: FontWeight.w600
              ),),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: getReferenceHeight(context) * 0.2),
          ),
          // SliverToBoxAdapter(
          //   child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Text("Recomendamos a leitura:", style: TextStyle(
          //       fontSize: getReferenceHeight(context) * 0.26,
          //       fontWeight: FontWeight.bold,
          //       color: Colors.blue
          //     ),),
          //   ),
          // ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(6)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text("Leitura complementar:", style: TextStyle(
                      color: Colors.blue
                    ),),
                    trailing: Icon(Icons.link),
                    subtitle: Text("Pagina 5 até 10"),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

