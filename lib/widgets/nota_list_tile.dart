import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ritmos_de_violao_premium/shapes/acorde_violao_shape.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/utils/campo_harmonico_utils.dart';
import 'package:ritmos_de_violao_premium/utils/enums.dart';

import '../models/acorde.dart';


class NotaListTile extends StatelessWidget {

  final Acorde acorde;
  Function onTap;
  TabMode tabMode;

  NotaListTile({
    required this.onTap,required this.acorde, required this.tabMode});

  Widget getShape(){
          return CustomPaint(
          painter: DesenharAcordeViolao(acorde: acorde),
          child: Container(),
        );

  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    double heightListTileRitmo = getListTileRitmoHeight(context);

    return ListTile(
      onTap: () => onTap(),
      tileColor: Colors.white,
      leading: AspectRatio(
        aspectRatio: 0.8,
        child: getShape(),
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 8, left: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              acorde.nome.length > 2 ? getNameFromCifra(acorde.nome.substring(0, 2)) 
                 : getNameFromCifra(acorde.nome),
              style: TextStyle(
                  fontSize: heightListTileRitmo * 0.1,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
            Spacer(),
            if(acorde.isLocked)
            FaIcon(FontAwesomeIcons.lock, size: getReferenceHeight(context) * 0.4)
          ],
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(left: 8, bottom: 8),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text('Cifra:',
                style: TextStyle(
                    fontSize: heightListTileRitmo * 0.09, fontWeight: FontWeight.bold)),
            SizedBox(width: 10),
            Text(
              acorde.nome,
              style: TextStyle(fontSize: height > 900 ? height * 0.022 : height * 0.023),
            )
          ],
        ),
      )
    );
  }
}
