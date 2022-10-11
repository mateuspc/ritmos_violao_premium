import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ritmos_de_violao_premium/data/curso_data.dart';
import 'package:ritmos_de_violao_premium/models/modulo.dart';
import 'package:ritmos_de_violao_premium/pages/page_modulos_curso/widgets/videos_carrosel.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/styles/app_fonts.dart';
import 'package:ritmos_de_violao_premium/utils/app_routes.dart';
import 'package:shimmer/shimmer.dart';

class PageAcessarConteudo extends StatefulWidget {
  const PageAcessarConteudo({Key? key}) : super(key: key);

  @override
  State<PageAcessarConteudo> createState() => _PageAcessarConteudoState();
}

class _PageAcessarConteudoState extends State<PageAcessarConteudo> {

  List<Modulo> modulos = [];
  final firestoreRef = FirebaseFirestore.instance;

  @override
  void initState() {
    super.initState();
    // CursoData.getModulosCurso().forEach(
    //         (modulo){
    //       firestoreRef.collection("modulos").doc().set(
    //           modulo.toJson()
    //       );
    //       modulo.conteudos!.forEach((e){
    //         firestoreRef.collection("videos").doc(e.uuid).set(
    //           e.toJsonFull()
    //         );
    //
    //         firestoreRef.collection("videos").doc(e.uuid).collection("links").doc().set(
    //           e.leitura!.toJson()
    //         );
    //
    //       });
    //     }
    // );
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.white,
        body: FutureBuilder<QuerySnapshot>(
          future: FirebaseFirestore.instance.collection("modulos").get(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {

            switch(snapshot.connectionState){

              case ConnectionState.none:
                break;
              case ConnectionState.waiting:
                return _loadingDefaultModulos();
              case ConnectionState.active:
                break;
              case ConnectionState.done:

            QuerySnapshot querySnapshot =  snapshot.data as QuerySnapshot;
                List<Modulo> modulos = querySnapshot.docs.map((e) => Modulo.fromJson(e.data() as Map<String, dynamic>)).toList();
                print(modulos);
                return Padding(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: ListView.builder(
                    itemCount: modulos.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index){

                      Modulo modulo = modulos[index];
                      return GestureDetector(
                        onTap: (){

                        },
                        child: ListView(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          children: [
                            Container(
                              width: size.width,
                              child: RichText(
                                textAlign: TextAlign.start,
                                text: TextSpan(
                                    text: modulo.nome,
                                    style: TextStyle(
                                        fontFamily: FontsApp.mulishSemibold,
                                        fontSize: getReferenceHeight(context) * 0.36,
                                        color: Colors.black
                                    ),
                                    children: [
                                      TextSpan(
                                          text: " (${modulo.conteudos!.length} aulas)",
                                          style: TextStyle(
                                              fontFamily: FontsApp.mulishRegular,
                                              fontSize: getReferenceHeight(context) * 0.36,
                                              color: Colors.black
                                          ))
                                    ]
                                ),
                              ),
                            ),
                            SizedBox(height: getReferenceHeight(context) * 0.33,),
                            Container(
                              child: VideoCarousel(
                                conteudos: modulo.conteudos!,
                                onTap: (content){
                                  Navigator.pushNamed(context, AppRoutes.PAGE_DETALHES_AULA, arguments: content);
                                },

                                onTapViewMore: (value) {

                                }, showSubmodules: true,),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
            }
            return Container();
          },
        )
    );
  }
  _loadingDefaultModulos() {
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
          ],
        ),
      ),
    );
  }
}

