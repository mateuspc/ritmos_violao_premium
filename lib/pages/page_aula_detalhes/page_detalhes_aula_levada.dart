// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:pod_player/pod_player.dart';
// import 'package:ritmos_de_violao_premium/models/video_aula.dart';
// import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
// import 'package:ritmos_de_violao_premium/utils/app_routes.dart';
// import 'package:ritmos_de_violao_premium/widgets/custom_toolbar.dart';
// import 'package:webview_flutter/webview_flutter.dart';
//
// class PageDetalhesAulaLevada extends StatefulWidget {
//   const PageDetalhesAulaLevada({Key? key}) : super(key: key);
//
//   @override
//   State<PageDetalhesAulaLevada> createState() => _PageDetalhesAulaLevadaState();
// }
//
// class _PageDetalhesAulaLevadaState extends State<PageDetalhesAulaLevada>{
//
//   PodPlayerController? controller;
//   bool firstAccess = true;
//   late VideoAula videoAula;
//
//   late WebViewController _webViewController;
//
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//
//     if(firstAccess){
//       firstAccess = false;
//
//       videoAula = ModalRoute.of(context)!.settings.arguments as VideoAula;
//
//       print(videoAula.videoId);
//       _webViewController = WebViewController()
//         ..setJavaScriptMode(JavaScriptMode.unrestricted)
//         ..setBackgroundColor(const Color(0x00000000))
//         ..setNavigationDelegate(
//           NavigationDelegate(
//             onProgress: (int progress) {
//               // Update loading bar.
//             },
//             onPageStarted: (String url) {},
//             onPageFinished: (String url) {},
//             onWebResourceError: (WebResourceError error) {},
//             onNavigationRequest: (NavigationRequest request) {
//               if (request.url.startsWith('https://www.youtube.com/')) {
//                 return NavigationDecision.prevent;
//               }
//               return NavigationDecision.navigate;
//             },
//           ),
//         )
//         ..loadRequest(Uri.parse("https://www.youtube.com/embed/${videoAula.videoId}"));
//     }
//   }
//   PlayVideoFrom getPlayVideoFrom(String url) {
//     return url.contains("vimeo")?
//     PlayVideoFrom.vimeo(url.split("/").last) :
//     PlayVideoFrom.youtube(url);
//   }
//   @override
//   Widget build(BuildContext context) {
//
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       body:  CustomScrollView(
//          slivers: [
//            // CustomToolbar(
//            //     context: context,
//            //     colorLeadingIcon: Colors.blue,
//            //     backgroundColor: Colors.white,
//            //     onTapLeading: (){
//            //       controller!.pause();
//            //       Navigator.pop(context);
//            //     }, title: "Voltar", onActionClicked: () {
//            //
//            //    }),
//            // SliverToBoxAdapter(
//            //   child: PodVideoPlayer( controller: controller!),
//            // ),
//            SliverToBoxAdapter(
//              child: Container(
//                height: 200,
//                width: size.width,
//                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
//                child: Stack(
//                  children: [
//                    WebViewWidget(controller: _webViewController),
//                    if(Platform.isAndroid)
//                      Positioned(
//                        top: 5,
//                        left: 5,
//                        child: Center(
//                          child: IconButton(onPressed: () {
//                            SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
//                            Navigator.pushNamedAndRemoveUntil(context, AppRoutes.PAGE_PREVIEW_MOCK_OPEN_URL_ONLY, (_) => false,
//                                arguments : {
//                                  'url' : videoAula.videoId,
//                                  'route' : 'PAGE_AULA_DETALHES_LEVADA'
//                                });
//                          },
//                            icon: Icon(Icons.fullscreen,  color: Colors.white, size: 30,),
//
//                          ),
//                        ),
//                      ),
//                    if(Platform.isAndroid)
//                      Positioned(
//                        bottom: 5,
//                        right: 20,
//                        child: Center(
//                          child: GestureDetector(
//                            onTap: () {
//                              SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
//                              Navigator.popAndPushNamed(context, AppRoutes.PAGE_PREVIEW_MOCK_OPEN_URL_ONLY,
//                                  arguments : {
//                                    'url' : videoAula.videoId,
//                                    'route' : 'PAGE_AULA_DETALHES'
//                                  });
//                            },
//                            child: Container(
//                              width: 40.0,
//                              height: 40.0,
//                              color: Colors.transparent,
//                            ),
//                          ),
//                        ),
//                      )
//                  ],
//                ),
//              ),
//            ),
//          SliverList(
//           delegate: SliverChildBuilderDelegate(
//               (BuildContext context, int index) {
//              String destaque = videoAula.destaques[index];
//             return ListTile(
//               leading: Icon(Icons.check,
//                 color: Colors.green,
//                 size: getReferenceHeight(context) * 0.45,),
//               title: Text(destaque, style: TextStyle(
//                 fontSize: getReferenceHeight(context) * 0.28
//               ),),
//             );
//           },
//           // 40 list items
//           childCount: videoAula.destaques.length,
//          ))
//          ],
//       ),
//     );
//   }
//
// }