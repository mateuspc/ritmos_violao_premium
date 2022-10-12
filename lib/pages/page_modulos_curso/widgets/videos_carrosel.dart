import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ritmos_de_violao_premium/models/conteudo.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';

enum TypeViewMore{
  SHOW_MODULES,
  VIEW_MORE
}
class VideoCarousel extends StatelessWidget {
  const VideoCarousel({
    Key? key,
    required this.conteudos,
    required this.onTap,
    required this.onTapViewMore,
    required this.showSubmodules
  }) : super(key: key);

  final List<Conteudo> conteudos;
  final Function(Conteudo) onTap;
  final Function(TypeViewMore) onTapViewMore;
  final bool showSubmodules;


  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Container(
      height: getReferenceHeight(context) * 3.3,
      child: ListView.builder(
        itemCount: conteudos.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {

          Conteudo conteudo = conteudos[index];

          return GestureDetector(
            onTap: () => onTap(conteudo),
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                height: getReferenceHeight(context) * 5,
                width: size.width * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: getReferenceHeight(context) * 2.3,
                        width: size.width * 0.5,
                        child: LayoutBuilder(
                            builder: (context, constraints) {
                              return Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(getReferenceHeight(context) * 0.22),
                                    child: Container(
                                        height: constraints.maxHeight,
                                        width: constraints.maxWidth,
                                        child: Transform.scale(
                                          scale: 1.2,
                                          child: CachedNetworkImage(imageUrl: conteudo.thumbnail!,
                                            placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                                            errorWidget: (context, url, error) => Icon(Icons.error),
                                            fit: BoxFit.cover,
                                          ),
                                        )

                                    ),
                                  ),
                                  Positioned.fill(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(getReferenceHeight(context) * 0.22),
                                        color: Colors.black12,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: getReferenceHeight(context) * 0.4,
                                    bottom: getReferenceHeight(context) * 0.4,
                                    left: getReferenceHeight(context) * 1.3,
                                    child: Container(
                                        height: 40,
                                        width: 40,
                                        child: Image.asset("assets/imagens/play.png")
                                    ),
                                  )
                                ],
                              );
                            }
                        )),
                    Container(
                      width: size.width ,
                      height: getReferenceHeight(context),
                      child: AutoSizeText(
                        conteudo.titulo as String,
                        style: TextStyle(fontSize: getReferenceHeight(context) * 0.3),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );


        },
      ),
    );
  }
}
