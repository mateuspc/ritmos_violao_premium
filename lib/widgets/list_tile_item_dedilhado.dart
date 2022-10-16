import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ritmos_de_violao_premium/models/arrow.dart';
import 'package:ritmos_de_violao_premium/models/categoria.dart';
import 'package:ritmos_de_violao_premium/shapes/draw_arrow.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/styles/app_fontsize.dart';
import 'package:ritmos_de_violao_premium/utils/app_enums.dart';

class ListTileItemForSale extends StatelessWidget {

  final String title;
  final String padrao;
  final String feitoPor;
  final TypeItem type;
  final List<Categoria> categorias;
  List<Arrow> arrows;
  bool isLocked;

  ListTileItemForSale({Key? key,
    required this.title,
    required this.padrao,
    required this.feitoPor,
    required this.arrows,
    required this.categorias,
    required this.type,

    this.isLocked = false,}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double heightListTileRitmo = getListTileRitmoHeight(context);
    double paddingHorizontal = heightListTileRitmo * 0.05;
    double paddingVertical = heightListTileRitmo * 0;

    return Container(
      height: heightListTileRitmo,
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: paddingVertical, horizontal: paddingHorizontal),
      child: LayoutBuilder(builder: (context, constraints){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title, style: TextStyle(
                      fontSize: constraints.maxHeight * 0.1,
                      fontWeight: FontWeight.bold
                  ),),
                  Spacer(),
                  if(isLocked)
                    FaIcon(FontAwesomeIcons.lock, size: getReferenceHeight(context) * 0.44)
                ],
              ),
            ),
            if(type == TypeItem.RITMO)
              Center(
                child: Container(
                  child: FittedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: arrows
                          .map(
                            (e) => CustomPaint(
                          painter: DrawArrow(
                              mascada: e.mascada,
                              down: e.down,
                              color: e.color,
                              mascadaColor: e.mascadaColor,
                              borderColor: e.borderColor,
                              borderStrokeWidthFraction: e.borderStrokeWidthFraction,
                              backgroundColor: e.backgroundColor),
                          child: Container(
                            width: constraints.maxHeight * 0.2,
                            height: constraints.maxHeight * 0.35,
                          ),
                        ),
                      ).toList(),
                    ),
                  ),
                ),
              ) else
              Padding(
                padding: EdgeInsets.symmetric(vertical: getToolbarHeight(context) * 0.02, horizontal: getToolbarHeight(context) * 0.02),
                child: Text(
                  padrao,style: TextStyle(
                  fontSize: getFontListTile(context) * 1.5,
                  fontWeight: FontWeight.bold,
                ), overflow: TextOverflow.ellipsis,),
              ),
            Align(
              alignment: Alignment.centerRight,
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                crossAxisAlignment: WrapCrossAlignment.end,
                alignment: WrapAlignment.end,
                children: buildCategoriaRitmo(categorias, MediaQuery.of(context).size.height),
              ),
            ),
            Container(
                height: constraints.maxHeight * 0.01
              // child: SizedBox(height: constraints.maxHeight * 0.01)
            ),
            Container(
              height: constraints.maxHeight * 0.13,
              width: constraints.maxWidth,
              alignment: Alignment.centerLeft,
              child: FittedBox(
                child: Text('Instrutor: $feitoPor', style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: constraints.maxHeight * 0.1,
                    color: Colors.grey[400]
                ),),
              ),
            )
          ],
        );
      }),
    );
  }
  List<Widget> buildCategoriaRitmo(List<Categoria> categorias, double height) {
    return categorias.map((e) => Container(
      decoration: BoxDecoration(
          color: e.backgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: e.borderColor, width: 1 )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Text(e.nome, style: TextStyle(
            color: e.textColor,
            fontWeight: FontWeight.w700,
            fontSize: height > 800 ? height * 0.02 : height * 0.022
        ),),
      ),
    )).toList();

  }
}


