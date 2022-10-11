import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ritmos_de_violao_premium/data/ritmos_data.dart';
import 'package:ritmos_de_violao_premium/models/categoria.dart';
import 'package:ritmos_de_violao_premium/models/ritmo.dart';
import 'package:ritmos_de_violao_premium/pages/paywall/page_paywall.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/utils/app_routes.dart';
import 'package:ritmos_de_violao_premium/utils/funcoes_menu.dart';
import '../shapes/draw_arrow.dart';

class PageRitmos extends StatefulWidget {
  PageRitmos();

  @override
  _PageRitmosState createState() => _PageRitmosState();
}

class _PageRitmosState extends State<PageRitmos> {
  late List<Ritmo> _ritmos;

  @override
  void initState() {
    super.initState();
    _ritmos = RitmosData.getAllRitmos();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return _body(width, height);
  }

  _body(double width, double height) {
    _ritmos.forEach((element) {
      element.isLocked = true;
    });
    return ListView.separated(
        itemCount: _ritmos.length,
        separatorBuilder: (context, index) {
          return Divider(height: 1);
        },
        itemBuilder: (context, index) {
          double heightListTileRitmo = getListTileRitmoHeight(context);
          double paddingHorizontal = heightListTileRitmo * 0.05;
          double paddingVertical = heightListTileRitmo * 0;

          return GestureDetector(
            onTap: () async {
              if (_ritmos[index].isLocked) {
                // current offering is available, show paywall
                await showModalBottomSheet(
                  useRootNavigator: true,
                  isDismissible: true,
                  isScrollControlled: true,
                  backgroundColor: kColorBackground,
                  shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(25.0)),
                  ),
                  context: context,
                  builder: (BuildContext context) {
                    return StatefulBuilder(builder:
                        (BuildContext context, StateSetter setModalState) {
                      // return Paywall(
                      //   offering: offerings.current,
                      // );
                          return Container();
                    });
                  },
                );
              } else {
                Navigator.pushNamed(context, AppRoutes.PAGE_DETAILS,
                    arguments: _ritmos[index]);
              }
            },
            child: Container(
              height: heightListTileRitmo,
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                  vertical: paddingVertical, horizontal: paddingHorizontal),
              child: LayoutBuilder(builder: (context, constraints) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Levada #${index + 1}',
                            style: TextStyle(
                                fontSize: constraints.maxHeight * 0.1,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          if (_ritmos[index].isLocked)
                            Icon(FontAwesomeIcons.lock,
                                size: getReferenceHeight(context) * 0.33)
                        ],
                      ),
                    ),
                    if (_ritmos[index].arrows.isNotEmpty)
                      Center(
                        child: Container(
                          child: FittedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: _ritmos[index]
                                  .arrows
                                  .map(
                                    (e) => CustomPaint(
                                      painter: DrawArrow(
                                          mascada: e.mascada,
                                          down: e.down,
                                          color: e.color,
                                          mascadaColor: e.mascadaColor,
                                          borderColor: e.borderColor,
                                          borderStrokeWidthFraction:
                                              e.borderStrokeWidthFraction,
                                          backgroundColor: e.backgroundColor),
                                      child: Container(
                                        width: constraints.maxHeight * 0.2,
                                        height: constraints.maxHeight * 0.35,
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                        ),
                      )
                    else
                      Container(
                        height: getReferenceHeight(context),
                        child: Center(
                          child: FittedBox(
                            child: Text(
                              _ritmos[index].sequenciaDedilhado,
                              style: TextStyle(
                                  fontSize: getReferenceHeight(context) * 0.5),
                            ),
                          ),
                        ),
                      ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        crossAxisAlignment: WrapCrossAlignment.end,
                        alignment: WrapAlignment.end,
                        children: buildCategoriaRitmo(
                            _ritmos[index].categorias, height),
                      ),
                    ),
                    Container(height: constraints.maxHeight * 0.01
                        // child: SizedBox(height: constraints.maxHeight * 0.01)
                        ),
                    Container(
                      height: constraints.maxHeight * 0.13,
                      width: constraints.maxWidth,
                      alignment: Alignment.centerLeft,
                      child: FittedBox(
                        child: Text(
                          '${_ritmos[index].feitoPor.contains('Thayna') ? 'Professora:' : 'Instrutor:'} ${_ritmos[index].feitoPor}',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: constraints.maxHeight * 0.1,
                              color: Colors.grey[400]),
                        ),
                      ),
                    )
                  ],
                );
              }),
            ),
          );
        });
  }

  List<Widget> buildCategoriaRitmo(List<Categoria> categorias, double height) {
    return categorias
        .map((e) => Container(
              decoration: BoxDecoration(
                  color: e.backgroundColor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: e.borderColor, width: 1)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  e.nome,
                  style: TextStyle(
                      color: e.textColor,
                      fontWeight: FontWeight.w700,
                      fontSize: height > 800 ? height * 0.02 : height * 0.022),
                ),
              ),
            ))
        .toList();
  }
}
