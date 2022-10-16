import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pod_player/pod_player.dart';
import 'package:ritmos_de_violao_premium/models/video_aula.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/widgets/custom_toolbar.dart';

class PageDetalhesAulaLevada extends StatefulWidget {
  const PageDetalhesAulaLevada({Key? key}) : super(key: key);

  @override
  State<PageDetalhesAulaLevada> createState() => _PageDetalhesAulaLevadaState();
}

class _PageDetalhesAulaLevadaState extends State<PageDetalhesAulaLevada>{

  PodPlayerController? controller;
  bool firstAccess = true;
  late VideoAula videoAula;
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

      videoAula = ModalRoute.of(context)!.settings.arguments as VideoAula;

      controller = PodPlayerController(
        playVideoFrom: getPlayVideoFrom(videoAula.videoId),
        podPlayerConfig: PodPlayerConfig(

        )
      )..initialise();
      controller!.enableFullScreen();
      if(controller != null){
        controller!.addListener((){
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
    return Scaffold(
      body:  CustomScrollView(
         slivers: [
           CustomToolbar(
               context: context,
               colorLeadingIcon: Colors.blue,
               backgroundColor: Colors.white,
               onTapLeading: (){
                 controller!.pause();
                 Navigator.pop(context);
               }, title: "Voltar", onActionClicked: () {

              }),
           SliverToBoxAdapter(
             child: PodVideoPlayer( controller: controller!),
           ),
         SliverList(
          delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
             String destaque = videoAula.destaques[index];
            return ListTile(
              leading: Icon(Icons.check,
                color: Colors.green,
                size: getReferenceHeight(context) * 0.45,),
              title: Text(destaque, style: TextStyle(
                fontSize: getReferenceHeight(context) * 0.28
              ),),
            );
          },
          // 40 list items
          childCount: videoAula.destaques.length,
         ))
         ],
      ),
    );
  }

}