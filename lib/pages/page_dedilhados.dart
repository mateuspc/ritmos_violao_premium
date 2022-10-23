
import 'package:flutter/material.dart';
import 'package:ritmos_de_violao_premium/data/dedilhados_data.dart';
import 'package:ritmos_de_violao_premium/models/categoria.dart';
import 'package:ritmos_de_violao_premium/models/dedilhado.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/utils/app_enums.dart';
import 'package:ritmos_de_violao_premium/utils/app_routes.dart';
import 'package:ritmos_de_violao_premium/widgets/custom_toolbar.dart';
import 'package:ritmos_de_violao_premium/widgets/list_tile_item_dedilhado.dart';

class PageDedilhados extends StatefulWidget {


  @override
  _PageDedilhadosState createState() => _PageDedilhadosState();
}

class _PageDedilhadosState extends State<PageDedilhados> {
  late List<Dedilhado> _dedilhados;
  bool _temDireito = false;

  @override
  void initState() {
    super.initState();
    _dedilhados = DedilhadosData.getDedilhados();

  }

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return _body(width, height);
  }

  _body(double width, double height) {

    if(!_temDireito){
      _dedilhados.forEach((element) {
        var index = _dedilhados.indexOf(element);
        if(index > 7){
          element.isLocked = true;
        }
      });
    }
    return Scaffold(
      appBar: CustomToolbarNotSliver(
          context: context,
          colorLeadingIcon: Colors.blueGrey,
          backgroundColor: Colors.white,
          onTapLeading: (){
            Navigator.pop(context);
          }, title: "Dedilhados no ukulele", onActionClicked: () {  }),
      body: ListView.separated(
          itemCount: _dedilhados.length,
          separatorBuilder: (context, index){
            return Divider(height: 1);
          },
          itemBuilder: (context, index) {

            double heightListTileRitmo = getListTileRitmoHeight(context);
            double paddingHorizontal = heightListTileRitmo * 0.05;
            double paddingVertical = heightListTileRitmo * 0;

            return GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, AppRoutes.PAGE_DETALHES_DEDILHADOS,
                    arguments: _dedilhados[index]);
              },
              child: ListTileItemForSale(
                feitoPor: _dedilhados[index].feitoPor,
                padrao: _dedilhados[index].padrao,
                title: 'Dedilhado #${index + 1}',
                categorias: _dedilhados[index].categorias,
                isLocked: _dedilhados[index].isLocked,
                type: TypeItem.DEDILHADO,
                arrows: [],
              ),
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

