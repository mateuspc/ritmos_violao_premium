import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ritmos_de_violao_premium/data/data_acordes_violao.dart';
import 'package:ritmos_de_violao_premium/models/acorde.dart';
import 'package:ritmos_de_violao_premium/utils/app_routes.dart';
import 'package:ritmos_de_violao_premium/utils/enums.dart';
import 'package:ritmos_de_violao_premium/widgets/nota_list_tile.dart';

class PageAcordes extends StatefulWidget {

  @override
  _PageAcordesState createState() => _PageAcordesState();
}

class _PageAcordesState extends State<PageAcordes> {

  late List<Acorde> _acordes;

  @override
  void initState() {
    super.initState();
    _acordes = DicionarioAcordesViolao.getAcordesPreviewHome();


  }

  @override
  Widget build(BuildContext context) {

    return ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (context, index){
          return Divider(height: 1);
        },
        itemCount: _acordes.length,
        itemBuilder: (context, index){
          return NotaListTile(acorde: _acordes[index], onTap: (){

              Navigator.of(context).pushNamed(AppRoutes.PAGE_CAMPO_HARMONICO,
                  arguments: _acordes[index]);

          }, tabMode: TabMode.ACORDES);
        }
    );
  }
}
