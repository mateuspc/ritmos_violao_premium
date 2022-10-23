import 'dart:ui' as ui;
import 'package:flutter/material.dart';
class DedilhadoCustomPainter extends CustomPainter {

  final Color polegarColor;
  final Color indicadorColor;
  final Color medioColor;
  final Color anelarColor;

  const DedilhadoCustomPainter({
    required this.polegarColor,
    required this.indicadorColor,
    required this.medioColor,
    required this.anelarColor
  }
  );

  @override
  void paint(Canvas canvas, Size size) {

    Paint background = Paint();
    background.style = PaintingStyle.fill;
    background.color = Colors.transparent;
    Rect rect = Rect.fromLTRB(0, 0, size.width, size.height);
    canvas.drawRect(rect, background);

    double width = size.width * 0.55;
    double height = size.height * 0.55;
    Path path_14 = Path();
    path_14.moveTo(width*0.7438984,height*0.5309119);
    path_14.cubicTo(width*0.7438984,height*0.5546448,width*0.7173585,height*0.5739389,width*0.6846361,height*0.5739389);
    path_14.cubicTo(width*0.6519137,height*0.5739389,width*0.6253737,height*0.5546448,width*0.6253737,height*0.5309119);
    path_14.cubicTo(width*0.6253737,height*0.5071567,width*0.6519137,height*0.4878849,width*0.6846361,height*0.4878849);
    path_14.cubicTo(width*0.7173585,height*0.4878849,width*0.7438984,height*0.5071567,width*0.7438984,height*0.5309119);
    path_14.close();




    Path path_0 = Path();
    path_0.moveTo(width*0.6989504,height*0.4995060);
    path_0.cubicTo(width*0.7154647,height*0.4949557,width*0.7334551,height*0.5019596,width*0.7391363,height*0.5151867);
    path_0.cubicTo(width*0.7654534,height*0.5761918,width*0.8341008,height*0.7352958,width*0.8603901,height*0.7963010);
    path_0.cubicTo(width*0.8660992,height*0.8095280,width*0.8573546,height*0.8239373,width*0.8408402,height*0.8285099);
    path_0.cubicTo(width*0.8244094,height*0.8330379,width*0.8049709,height*0.8384358,width*0.7885401,height*0.8429638);
    path_0.cubicTo(width*0.7720536,height*0.8475364,width*0.7540632,height*0.8405325,width*0.7483542,height*0.8273054);
    path_0.cubicTo(width*0.7220371,height*0.7663003,width*0.6534175,height*0.6071962,width*0.6271003,height*0.5461688);
    path_0.cubicTo(width*0.6213913,height*0.5329640,width*0.6301637,height*0.5185548,width*0.6466502,height*0.5139822);
    path_0.cubicTo(width*0.6630811,height*0.5094319,width*0.6825195,height*0.5040563,width*0.6989504,height*0.4995060);
    path_0.close();

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_0,paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(width*0.9258906,height*0.4676093);
    path_1.cubicTo(width*0.9433519,height*0.4673194,width*0.9578054,height*0.4784274,width*0.9581674,height*0.4923906);
    path_1.cubicTo(width*0.9598662,height*0.5569200,width*0.9642942,height*0.7252361,width*0.9659651,height*0.7897655);
    path_1.cubicTo(width*0.9663550,height*0.8037287,width*0.9524863,height*0.8153051,width*0.9350529,height*0.8155951);
    path_1.cubicTo(width*0.9176474,height*0.8158851,width*0.8970949,height*0.8162420,width*0.8797172,height*0.8165319);
    path_1.cubicTo(width*0.8622560,height*0.8168219,width*0.8478303,height*0.8057361,width*0.8474683,height*0.7917507);
    path_1.cubicTo(width*0.8457695,height*0.7272213,width*0.8413415,height*0.5589274,width*0.8396427,height*0.4943981);
    path_1.cubicTo(width*0.8392807,height*0.4804126,width*0.8531216,height*0.4688361,width*0.8705828,height*0.4685462);
    path_1.cubicTo(width*0.8879605,height*0.4682562,width*0.9085129,height*0.4679216,width*0.9258906,height*0.4676093);
    path_1.close();

    Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
    paint_1_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_1,paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(width*1.127795,height*0.5215214);
    path_2.cubicTo(width*1.145618,height*0.5253356,width*1.156173,height*0.5399679,width*1.151411,height*0.5542433);
    path_2.cubicTo(width*1.129466,height*0.6200664,width*1.072208,height*0.7917284,width*1.050236,height*0.8575515);
    path_2.cubicTo(width*1.045474,height*0.8718046,width*1.027205,height*0.8802806,width*1.009381,height*0.8764664);
    path_2.cubicTo(width*0.9929228,height*0.8729645,width*0.9757958,height*0.8692841,width*0.9593371,height*0.8657598);
    path_2.cubicTo(width*0.9415417,height*0.8619456,width*0.9309591,height*0.8473133,width*0.9357213,height*0.8330602);
    path_2.cubicTo(width*0.9576662,height*0.7672148,width*1.014951,height*0.5955528,width*1.036896,height*0.5297297);
    path_2.cubicTo(width*1.041658,height*0.5154766,width*1.059927,height*0.5070006,width*1.077750,height*0.5108148);
    path_2.cubicTo(width*1.094209,height*0.5143391,width*1.111336,height*0.5179971,width*1.127795,height*0.5215214);
    path_2.close();

    Paint paint_2_fill = Paint()..style=PaintingStyle.fill;
    paint_2_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_2,paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(width*1.338443,height*0.7059643);
    path_3.cubicTo(width*1.352284,height*0.7157117,width*1.353649,height*0.7325969,width*1.341479,height*0.7436603);
    path_3.cubicTo(width*1.285280,height*0.7948288,width*1.138767,height*0.9282371,width*1.082568,height*0.9794056);
    path_3.cubicTo(width*1.070398,height*0.9904913,width*1.049317,height*0.9915620,width*1.035476,height*0.9818146);
    path_3.cubicTo(width*1.024364,height*0.9739854,width*1.016037,height*0.9681191,width*1.004898,height*0.9602899);
    path_3.cubicTo(width*0.9910848,height*0.9505425,width*0.9897202,height*0.9336573,width*1.001890,height*0.9225716);
    path_3.cubicTo(width*1.058089,height*0.8714031,width*1.204602,height*0.7379948,width*1.260801,height*0.6868263);
    path_3.cubicTo(width*1.272971,height*0.6757406,width*1.294052,height*0.6746699,width*1.307865,height*0.6844173);
    path_3.cubicTo(width*1.319005,height*0.6922465,width*1.327332,height*0.6981128,width*1.338443,height*0.7059643);
    path_3.close();

    Paint paint_3_fill = Paint()..style=PaintingStyle.fill;
    paint_3_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_3,paint_3_fill);

    Path path_4 = Path();
    path_4.moveTo(width*0.6979757,height*0.9754352);
    path_4.lineTo(width*1.091591,height*0.9754352);
    path_4.lineTo(width*1.091591,height*1.283807);
    path_4.lineTo(width*0.6979757,height*1.283807);
    path_4.lineTo(width*0.6979757,height*0.9754352);
    path_4.close();

    Paint paint_4_fill = Paint()..style=PaintingStyle.fill;
    paint_4_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_4,paint_4_fill);

    Path path_5 = Path();
    path_5.moveTo(width*1.248325,height*0.7831408);
    path_5.cubicTo(width*1.260522,height*0.7942043,width*1.259241,height*0.8111117,width*1.245400,height*0.8208815);
    path_5.cubicTo(width*1.181571,height*0.8660498,width*1.015146,height*0.9837997,width*0.9513166,height*1.028946);
    path_5.cubicTo(width*0.9375036,height*1.038716,width*0.9163942,height*1.037667,width*0.9041964,height*1.026604);
    path_5.cubicTo(width*0.8954240,height*1.018663,width*0.8912745,height*1.014916,width*0.8825300,height*1.006975);
    path_5.cubicTo(width*0.8703322,height*0.9959115,width*0.8716411,height*0.9790041,width*0.8854541,height*0.9692120);
    path_5.cubicTo(width*0.9492837,height*0.9240660,width*1.115736,height*0.8063161,width*1.179538,height*0.7611700);
    path_5.cubicTo(width*1.193379,height*0.7514003,width*1.214460,height*0.7524487,width*1.226686,height*0.7635121);
    path_5.cubicTo(width*1.235431,height*0.7714528,width*1.239580,height*0.7752001,width*1.248325,height*0.7831408);
    path_5.close();

    Paint paint_5_fill = Paint()..style=PaintingStyle.fill;
    paint_5_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_5,paint_5_fill);

    Path path_6 = Path();
    path_6.moveTo(width*1.206384,height*0.8098849);
    path_6.cubicTo(width*1.219974,height*0.8162197,width*1.224402,height*0.8302497,width*1.216187,height*0.8410009);
    path_6.cubicTo(width*1.204184,height*0.8566816,width*1.174219,height*0.8958721,width*1.126263,height*0.9585724);
    path_6.cubicTo(width*1.066639,height*1.044113,width*1.029377,height*1.097557,width*1.014450,height*1.118948);
    path_6.cubicTo(width*1.006792,height*1.129967,width*0.9893303,height*1.133803,width*0.9757122,height*1.127446);
    path_6.cubicTo(width*0.9620941,height*1.121111,width*0.9492558,height*1.115134,width*0.9364453,height*1.109156);
    path_6.cubicTo(width*0.9205158,height*1.101728,width*0.9151131,height*1.085378,width*0.9243868,height*1.072620);
    path_6.cubicTo(width*0.9671626,height*1.013734,width*1.078725,height*0.8601389,width*1.121501,height*0.8012528);
    path_6.cubicTo(width*1.130775,height*0.7884941,width*1.151188,height*0.7841669,width*1.167117,height*0.7915722);
    path_6.cubicTo(width*1.179928,height*0.7975501,width*1.192738,height*0.8035279,width*1.206384,height*0.8098849);
    path_6.close();

    Paint paint_6_fill = Paint()..style=PaintingStyle.fill;
    paint_6_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_6,paint_6_fill);

    Path path_7 = Path();
    path_7.moveTo(width*1.147846,height*0.8549640);
    path_7.cubicTo(width*1.156145,height*0.8565923,width*1.158094,height*0.8653360,width*1.150993,height*0.8691502);
    path_7.cubicTo(width*1.143418,height*0.8732098,width*1.132835,height*0.8894927,width*1.119273,height*0.9180213);
    path_7.cubicTo(width*1.101143,height*0.9560965,width*1.081649,height*1.012663,width*1.060790,height*1.087676);
    path_7.cubicTo(width*1.060790,height*1.144532,width*1.060790,height*1.180065,width*1.060790,height*1.194273);
    path_7.cubicTo(width*1.060790,height*1.205403,width*1.047757,height*1.213589,width*1.034250,height*1.210957);
    path_7.cubicTo(width*1.018683,height*1.207902,width*1.003199,height*1.204868,width*0.9888012,height*1.202058);
    path_7.cubicTo(width*0.9708944,height*1.198556,width*0.9599219,height*1.184102,width*0.9642942,height*1.169759);
    path_7.cubicTo(width*0.9844846,height*1.103579,width*1.037063,height*0.9309584,width*1.057254,height*0.8647561);
    path_7.cubicTo(width*1.061626,height*0.8504138,width*1.079672,height*0.8416254,width*1.097551,height*0.8451274);
    path_7.cubicTo(width*1.111949,height*0.8479379,width*1.131304,height*0.8517298,width*1.147846,height*0.8549640);
    path_7.close();

    Paint paint_7_fill = Paint()..style=PaintingStyle.fill;
    paint_7_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_7,paint_7_fill);

    Path path_8 = Path();
    path_8.moveTo(width*1.154279,height*0.8676558);
    path_8.cubicTo(width*1.166226,height*0.8708455,width*1.169735,height*0.8830242,width*1.160712,height*0.8900504);
    path_8.cubicTo(width*1.146147,height*0.9014484,width*1.109693,height*0.9298877,width*1.051350,height*0.9754352);
    path_8.cubicTo(width*1.043886,height*1.095862,width*1.039208,height*1.171120,width*1.037342,height*1.201232);
    path_8.cubicTo(width*1.036645,height*1.212340,width*1.022944,height*1.219857,width*1.009771,height*1.216355);
    path_8.cubicTo(width*0.9946216,height*1.212318,width*0.9797224,height*1.208370,width*0.9656588,height*1.204623);
    path_8.cubicTo(width*0.9481697,height*1.199983,width*0.9387011,height*1.184860,width*0.9444937,height*1.170852);
    path_8.cubicTo(width*0.9713121,height*1.106189,width*1.041185,height*0.9375384,width*1.068003,height*0.8728752);
    path_8.cubicTo(width*1.073796,height*0.8588675,width*1.092677,height*0.8512837,width*1.110166,height*0.8559232);
    path_8.cubicTo(width*1.124230,height*0.8596705,width*1.139129,height*0.8636408,width*1.154279,height*0.8676558);
    path_8.close();

    Paint paint_8_fill = Paint()..style=PaintingStyle.fill;
    paint_8_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_8,paint_8_fill);

    Path path_9 = Path();
    path_9.moveTo(width*0.9871581,height*0.8038402);
    path_9.cubicTo(width*1.002531,height*0.8038402,width*1.015007,height*0.8138330,width*1.015007,height*0.8261455);
    path_9.cubicTo(width*1.015007,height*0.8651353,width*1.015007,height*0.9597546,width*1.015007,height*0.9987220);
    path_9.cubicTo(width*1.015007,height*1.011035,width*1.002531,height*1.021027,width*0.9871581,height*1.021027);
    path_9.cubicTo(width*0.9343567,height*1.021027,width*0.8037734,height*1.021027,width*0.7509720,height*1.021027);
    path_9.cubicTo(width*0.7355995,height*1.021027,width*0.7231232,height*1.011035,width*0.7231232,height*0.9987220);
    path_9.cubicTo(width*0.7231232,height*0.9597546,width*0.7231232,height*0.8651353,width*0.7231232,height*0.8261455);
    path_9.cubicTo(width*0.7231232,height*0.8138330,width*0.7355995,height*0.8038402,width*0.7509720,height*0.8038402);
    path_9.cubicTo(width*0.8037734,height*0.8038402,width*0.9343567,height*0.8038402,width*0.9871581,height*0.8038402);
    path_9.close();

    Paint paint_9_fill = Paint()..style=PaintingStyle.fill;
    paint_9_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_9,paint_9_fill);

    Path path_10 = Path();
    path_10.moveTo(width*0.7300854,height*0.5726452);
    path_10.cubicTo(width*0.7470732,height*0.5693440,width*0.7641445,height*0.5776862,width*0.7682661,height*0.5912702);
    path_10.cubicTo(width*0.7873148,height*0.6539928,width*0.8369693,height*0.8175580,width*0.8559900,height*0.8802806);
    path_10.cubicTo(width*0.8601116,height*0.8938646,width*0.8497240,height*0.9075601,width*0.8327641,height*0.9108612);
    path_10.cubicTo(width*0.8180042,height*0.9137163,width*0.8044975,height*0.9163484,width*0.7897655,height*0.9192258);
    path_10.cubicTo(width*0.7728055,height*0.9225269,width*0.7557063,height*0.9141847,width*0.7515847,height*0.9006008);
    path_10.cubicTo(width*0.7325639,height*0.8378781,width*0.6829094,height*0.6743130,width*0.6638608,height*0.6115904);
    path_10.cubicTo(width*0.6597392,height*0.5980064,width*0.6701547,height*0.5843109,width*0.6871146,height*0.5810097);
    path_10.cubicTo(width*0.7018466,height*0.5781547,width*0.7153533,height*0.5755226,width*0.7300854,height*0.5726452);
    path_10.close();

    Paint paint_10_fill = Paint()..style=PaintingStyle.fill;
    paint_10_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_10,paint_10_fill);

    Path path_11 = Path();
    path_11.moveTo(width*1.115569,height*0.8813067);
    path_11.cubicTo(width*1.133504,height*0.8846525,width*1.144643,height*0.8990171,width*1.140466,height*0.9134041);
    path_11.cubicTo(width*1.121111,height*0.9797402,width*1.070649,height*1.152785,width*1.051294,height*1.219121);
    path_11.cubicTo(width*1.047117,height*1.233508,width*1.029182,height*1.242430,width*1.011219,height*1.239084);
    path_11.cubicTo(width*0.9967938,height*1.236363,width*0.9859884,height*1.234356,width*0.9715627,height*1.231657);
    path_11.cubicTo(width*0.9536281,height*1.228289,width*0.9424885,height*1.213924,width*0.9466659,height*1.199559);
    path_11.cubicTo(width*0.9660208,height*1.133201,width*1.016483,height*0.9601784,width*1.035838,height*0.8938200);
    path_11.cubicTo(width*1.040015,height*0.8794553,width*1.057950,height*0.8705332,width*1.075912,height*0.8738790);
    path_11.cubicTo(width*1.090338,height*0.8765779,width*1.101143,height*0.8786077,width*1.115569,height*0.8813067);
    path_11.close();

    Paint paint_11_fill = Paint()..style=PaintingStyle.fill;
    paint_11_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_11,paint_11_fill);

    Path path_12 = Path();
    path_12.moveTo(width*1.097300,height*0.9018276);
    path_12.cubicTo(width*1.115569,height*0.9037905,width*1.128407,height*0.9172183,width*1.125985,height*0.9318506);
    path_12.cubicTo(width*1.114762,height*0.9993912,width*1.085520,height*1.175537,width*1.074325,height*1.243077);
    path_12.cubicTo(width*1.071874,height*1.257709,width*1.055109,height*1.267992,width*1.036840,height*1.266029);
    path_12.cubicTo(width*1.023751,height*1.264646,width*1.017485,height*1.263977,width*1.004369,height*1.262572);
    path_12.cubicTo(width*0.9860998,height*1.260631,width*0.9732615,height*1.247204,width*0.9756844,height*1.232571);
    path_12.cubicTo(width*0.9869074,height*1.165031,width*1.016149,height*0.9888854,width*1.027372,height*0.9213448);
    path_12.cubicTo(width*1.029795,height*0.9067125,width*1.046560,height*0.8964297,width*1.064829,height*0.8983703);
    path_12.cubicTo(width*1.077945,height*0.8997755,width*1.084183,height*0.9004447,width*1.097300,height*0.9018276);
    path_12.close();

    Paint paint_12_fill = Paint()..style=PaintingStyle.fill;
    paint_12_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_12,paint_12_fill);

    Path path_13 = Path();
    path_13.moveTo(width*0.6685951,height*0.5196031);
    path_13.cubicTo(width*0.6685951,height*0.5249787,width*0.6685951,height*0.5293282,width*0.6685951,height*0.5293282);
    path_13.cubicTo(width*0.6685951,height*0.5293282,width*0.6685951,height*0.5249787,width*0.6685951,height*0.5196031);
    path_13.cubicTo(width*0.6685951,height*0.5142498,width*0.6685951,height*0.5099003,width*0.6685951,height*0.5099003);
    path_13.cubicTo(width*0.6685951,height*0.5118409,width*0.6685951,height*0.5142498,width*0.6685951,height*0.5196031);
    path_13.close();

    Paint paint_13_fill = Paint()..style=PaintingStyle.fill;
    paint_13_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_13,paint_13_fill);

    Path path_17 = Path();
    path_17.moveTo(width*1.350586,height*0.6845289);
    path_17.cubicTo(width*1.363452,height*0.6947893,width*1.363507,height*0.7114737,width*1.350697,height*0.7217788);
    path_17.cubicTo(width*1.291518,height*0.7694007,width*1.137208,height*0.8935746,width*1.078029,height*0.9411965);
    path_17.cubicTo(width*1.065218,height*0.9515016,width*1.044387,height*0.9515462,width*1.031521,height*0.9412857);
    path_17.cubicTo(width*1.022303,height*0.9339473,width*1.018015,height*0.9305123,width*1.008824,height*0.9231738);
    path_17.cubicTo(width*0.9959305,height*0.9129133,width*0.9958748,height*0.8962289,width*1.008713,height*0.8859239);
    path_17.cubicTo(width*1.067864,height*0.8383019,width*1.222175,height*0.7141281,width*1.281353,height*0.6665061);
    path_17.cubicTo(width*1.294164,height*0.6562011,width*1.314995,height*0.6561565,width*1.327861,height*0.6664169);
    path_17.cubicTo(width*1.337079,height*0.6737554,width*1.341368,height*0.6771904,width*1.350586,height*0.6845289);
    path_17.close();

    Paint paint_17_fill = Paint()..style=PaintingStyle.fill;
    paint_17_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_17,paint_17_fill);

    Path path_18 = Path();
    path_18.moveTo(width*1.365429,height*0.7029085);
    path_18.cubicTo(width*1.365429,height*0.7266637,width*1.342704,height*0.7459355,width*1.314716,height*0.7459355);
    path_18.cubicTo(width*1.286700,height*0.7459355,width*1.263976,height*0.7266637,width*1.263976,height*0.7029085);
    path_18.cubicTo(width*1.263976,height*0.6791533,width*1.286700,height*0.6598815,width*1.314716,height*0.6598815);
    path_18.cubicTo(width*1.342704,height*0.6598815,width*1.365429,height*0.6791533,width*1.365429,height*0.7029085);
    path_18.close();

    Paint paint_18_fill = Paint()..style=PaintingStyle.fill;
    paint_18_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_18,paint_18_fill);

    Path path_19 = Path();
    path_19.moveTo(width*0.5846309,height*0.9077385);
    path_19.cubicTo(width*0.5994186,height*0.8989056,width*0.6203052,height*0.9013369,width*0.6313334,height*0.9131810);
    path_19.cubicTo(width*0.6822132,height*0.9677845,width*0.8148851,height*1.110204,width*0.8657650,height*1.164808);
    path_19.cubicTo(width*0.8767653,height*1.176629,width*0.8737297,height*1.193381,width*0.8589698,height*1.202191);
    path_19.cubicTo(width*0.8483594,height*1.208526,width*0.8433188,height*1.211560,width*0.8327084,height*1.217894);
    path_19.cubicTo(width*0.8179485,height*1.226727,width*0.7970340,height*1.224274,width*0.7860059,height*1.212452);
    path_19.cubicTo(width*0.7351539,height*1.157848,width*0.6024820,height*1.015429,width*0.5516021,height*0.9608252);
    path_19.cubicTo(width*0.5405740,height*0.9490034,width*0.5436095,height*0.9322521,width*0.5583694,height*0.9234192);
    path_19.cubicTo(width*0.5689798,height*0.9170844,width*0.5740483,height*0.9140732,width*0.5846309,height*0.9077385);
    path_19.close();

    Paint paint_19_fill = Paint()..style=PaintingStyle.fill;
    paint_19_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_19,paint_19_fill);

    Path path_20 = Path();
    path_20.moveTo(width*0.6679268,height*0.9096791);
    path_20.cubicTo(width*0.6853601,height*0.9048834,width*0.7043530,height*0.9123111,width*0.7103405,height*0.9262742);
    path_20.cubicTo(width*0.7379945,height*0.9906921,width*0.8101508,height*1.158741,width*0.8378326,height*1.223158);
    path_20.cubicTo(width*0.8438201,height*1.237122,width*0.8345464,height*1.252312,width*0.8171130,height*1.257129);
    path_20.cubicTo(width*0.8046089,height*1.260565,width*0.7986492,height*1.262215,width*0.7861451,height*1.265650);
    path_20.cubicTo(width*0.7687117,height*1.270446,width*0.7497467,height*1.263040,width*0.7437313,height*1.249077);
    path_20.cubicTo(width*0.7160774,height*1.184637,width*0.6439210,height*1.016611,width*0.6162671,height*0.9521708);
    path_20.cubicTo(width*0.6102796,height*0.9382299,width*0.6195255,height*0.9230177,width*0.6369588,height*0.9182220);
    path_20.cubicTo(width*0.6494630,height*0.9147870,width*0.6554226,height*0.9131364,width*0.6679268,height*0.9096791);
    path_20.close();

    Paint paint_20_fill = Paint()..style=PaintingStyle.fill;
    paint_20_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_20,paint_20_fill);

    Path path_21 = Path();
    path_21.moveTo(width*0.7239029,height*0.9026752);
    path_21.cubicTo(width*0.7417262,height*0.9006900,width*0.7582127,height*0.9106605,width*0.7606913,height*0.9249359);
    path_21.cubicTo(width*0.7721371,height*0.9908482,width*0.8020190,height*1.162778,width*0.8134927,height*1.228712);
    path_21.cubicTo(width*0.8159712,height*1.242988,width*0.8035228,height*1.256170,width*0.7856995,height*1.258156);
    path_21.cubicTo(width*0.7724435,height*1.259628,width*0.7649800,height*1.260475,width*0.7517239,height*1.261947);
    path_21.cubicTo(width*0.7339007,height*1.263933,width*0.7174420,height*1.253962,width*0.7149635,height*1.239687);
    path_21.cubicTo(width*0.7034897,height*1.173774,width*0.6736079,height*1.001845,width*0.6621342,height*0.9359325);
    path_21.cubicTo(width*0.6596556,height*0.9216347,width*0.6721041,height*0.9084523,width*0.6899273,height*0.9064671);
    path_21.cubicTo(width*0.7031834,height*0.9049949,width*0.7106469,height*0.9041473,width*0.7239029,height*0.9026752);
    path_21.close();

    Paint paint_21_fill = Paint()..style=PaintingStyle.fill;
    paint_21_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_21,paint_21_fill);

    Path path_22 = Path();
    path_22.moveTo(width*0.5335282,height*0.8330602);
    path_22.cubicTo(width*0.5416322,height*0.8282199,width*0.5530781,height*0.8295583,width*0.5591213,height*0.8360268);
    path_22.cubicTo(width*0.5869980,height*0.8659606,width*0.6597113,height*0.9440070,width*0.6875880,height*0.9739185);
    path_22.cubicTo(width*0.6936312,height*0.9804093,width*0.6919603,height*0.9895768,width*0.6838563,height*0.9944171);
    path_22.cubicTo(width*0.6708509,height*1.002202,width*0.6464553,height*1.016789,width*0.6334220,height*1.024552);
    path_22.cubicTo(width*0.6253459,height*1.029392,width*0.6138721,height*1.028054,width*0.6078568,height*1.021585);
    path_22.cubicTo(width*0.5799801,height*0.9916512,width*0.5072668,height*0.9136048,width*0.4793901,height*0.8836710);
    path_22.cubicTo(width*0.4733469,height*0.8772025,width*0.4750178,height*0.8680350,width*0.4830940,height*0.8631947);
    path_22.cubicTo(width*0.4961272,height*0.8554102,width*0.5205228,height*0.8408225,width*0.5335282,height*0.8330602);
    path_22.close();

    Paint paint_22_fill = Paint()..style=PaintingStyle.fill;
    paint_22_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_22,paint_22_fill);

    Path path_23 = Path();
    path_23.moveTo(width*0.5853271,height*0.8248741);
    path_23.cubicTo(width*0.5922893,height*0.8190078,width*0.6038466,height*0.8187625,width*0.6111708,height*0.8243388);
    path_23.cubicTo(width*0.6450072,height*0.8500346,width*0.7332045,height*0.9170398,width*0.7670408,height*0.9427356);
    path_23.cubicTo(width*0.7743650,height*0.9482896,width*0.7746714,height*0.9575687,width*0.7677370,height*0.9634350);
    path_23.cubicTo(width*0.7565418,height*0.9728701,width*0.7355995,height*0.9905583,width*0.7244321,height*0.9999934);
    path_23.cubicTo(width*0.7174977,height*1.005860,width*0.7059126,height*1.006105,width*0.6985883,height*1.000551);
    path_23.cubicTo(width*0.6647520,height*0.9748553,width*0.5765547,height*0.9078500,width*0.5427183,height*0.8821543);
    path_23.cubicTo(width*0.5353941,height*0.8765779,width*0.5350878,height*0.8673212,width*0.5420221,height*0.8614549);
    path_23.cubicTo(width*0.5532174,height*0.8520197,width*0.5741597,height*0.8343316,width*0.5853271,height*0.8248741);
    path_23.close();

    Paint paint_23_fill = Paint()..style=PaintingStyle.fill;
    paint_23_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_23,paint_23_fill);

    Path path_24 = Path();
    path_24.moveTo(width*0.4568046,height*0.8046655);
    path_24.cubicTo(width*0.4628478,height*0.7981969,width*0.4742937,height*0.7968586,width*0.4823977,height*0.8016989);
    path_24.cubicTo(width*0.5197430,height*0.8240488,width*0.6171305,height*0.8823104,width*0.6545036,height*0.9046604);
    path_24.cubicTo(width*0.6625798,height*0.9095006,width*0.6642507,height*0.9186904,width*0.6582075,height*0.9251590);
    path_24.cubicTo(width*0.6484883,height*0.9355756,width*0.6302751,height*0.9551151,width*0.6205559,height*0.9655317);
    path_24.cubicTo(width*0.6145127,height*0.9720225,width*0.6030389,height*0.9733385,width*0.5949628,height*0.9684983);
    path_24.cubicTo(width*0.5576175,height*0.9461483,width*0.4602022,height*0.8878867,width*0.4228569,height*0.8655368);
    path_24.cubicTo(width*0.4147529,height*0.8606965,width*0.4131098,height*0.8515290,width*0.4191530,height*0.8450382);
    path_24.cubicTo(width*0.4288722,height*0.8346216,width*0.4470854,height*0.8150821,width*0.4568046,height*0.8046655);
    path_24.close();

    Paint paint_24_fill = Paint()..style=PaintingStyle.fill;
    paint_24_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_24,paint_24_fill);

    Path path_25 = Path();
    path_25.moveTo(width*0.5736027,height*0.8203238);
    path_25.cubicTo(width*0.5736027,height*0.8440567,width*0.5470349,height*0.8633509,width*0.5143404,height*0.8633509);
    path_25.cubicTo(width*0.4816180,height*0.8633509,width*0.4550502,height*0.8440567,width*0.4550502,height*0.8203238);
    path_25.cubicTo(width*0.4550502,height*0.7965686,width*0.4816180,height*0.7772968,width*0.5143404,height*0.7772968);
    path_25.cubicTo(width*0.5470349,height*0.7772968,width*0.5736027,height*0.7965686,width*0.5736027,height*0.8203238);
    path_25.close();

    Paint paint_25_fill = Paint()..style=PaintingStyle.fill;
    paint_25_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_25,paint_25_fill);

    Path path_26 = Path();
    path_26.moveTo(width*0.5509337,height*0.7962341);
    path_26.cubicTo(width*0.5554453,height*0.7923975,width*0.5629923,height*0.7922414,width*0.5677544,height*0.7958772);
    path_26.cubicTo(width*0.5898107,height*0.8126062,width*0.6472908,height*0.8562801,width*0.6693192,height*0.8730091);
    path_26.cubicTo(width*0.6741092,height*0.8766448,width*0.6743041,height*0.8826673,width*0.6697648,height*0.8865038);
    path_26.cubicTo(width*0.6577062,height*0.8966750,width*0.6297738,height*0.9202964,width*0.6177153,height*0.9304677);
    path_26.cubicTo(width*0.6131759,height*0.9343042,width*0.6056289,height*0.9344603,width*0.6008667,height*0.9308245);
    path_26.cubicTo(width*0.5788383,height*0.9140955,width*0.5213583,height*0.8704217,width*0.4993020,height*0.8536926);
    path_26.cubicTo(width*0.4945398,height*0.8500569,width*0.4943449,height*0.8440121,width*0.4988564,height*0.8401979);
    path_26.cubicTo(width*0.5109150,height*0.8300044,width*0.5388752,height*0.8064053,width*0.5509337,height*0.7962341);
    path_26.close();

    Paint paint_26_fill = Paint()..style=PaintingStyle.fill;
    paint_26_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_26,paint_26_fill);

    Path path_27 = Path();
    path_27.moveTo(width*0.5143404,height*0.8301382);
    path_27.cubicTo(width*0.5143404,height*0.8538934,width*0.4877726,height*0.8731652,width*0.4550502,height*0.8731652);
    path_27.cubicTo(width*0.4223556,height*0.8731652,width*0.3957878,height*0.8538934,width*0.3957878,height*0.8301382);
    path_27.cubicTo(width*0.3957878,height*0.8063830,width*0.4223556,height*0.7871112,width*0.4550502,height*0.7871112);
    path_27.cubicTo(width*0.4877726,height*0.7871112,width*0.5143404,height*0.8063830,width*0.5143404,height*0.8301382);
    path_27.close();

    Paint paint_27_fill = Paint()..style=PaintingStyle.fill;
    paint_27_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_27,paint_27_fill);

    Path path_28 = Path();
    path_28.moveTo(width*0.5143404,height*0.8203238);
    path_28.cubicTo(width*0.5143404,height*0.8440567,width*0.4877726,height*0.8633509,width*0.4550502,height*0.8633509);
    path_28.cubicTo(width*0.4223556,height*0.8633509,width*0.3957878,height*0.8440567,width*0.3957878,height*0.8203238);
    path_28.cubicTo(width*0.3957878,height*0.7965686,width*0.4223556,height*0.7772968,width*0.4550502,height*0.7772968);
    path_28.cubicTo(width*0.4877726,height*0.7772968,width*0.5143404,height*0.7965686,width*0.5143404,height*0.8203238);
    path_28.close();

    Paint paint_28_fill = Paint()..style=PaintingStyle.fill;
    paint_28_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_28,paint_28_fill);

    Path path_29 = Path();
    path_29.moveTo(width*0.5386803,height*0.8165319);
    path_29.cubicTo(width*0.5386803,height*0.8402871,width*0.5121125,height*0.8595589,width*0.4793901,height*0.8595589);
    path_29.cubicTo(width*0.4466955,height*0.8595589,width*0.4201277,height*0.8402871,width*0.4201277,height*0.8165319);
    path_29.cubicTo(width*0.4201277,height*0.7927990,width*0.4466955,height*0.7735049,width*0.4793901,height*0.7735049);
    path_29.cubicTo(width*0.5121125,height*0.7735049,width*0.5386803,height*0.7927990,width*0.5386803,height*0.8165319);
    path_29.close();

    Paint paint_29_fill = Paint()..style=PaintingStyle.fill;
    paint_29_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_29,paint_29_fill);

    Path path_30 = Path();
    path_30.moveTo(width*0.5076009,height*0.8203238);
    path_30.cubicTo(width*0.5076009,height*0.8440567,width*0.4810610,height*0.8633509,width*0.4483386,height*0.8633509);
    path_30.cubicTo(width*0.4156162,height*0.8633509,width*0.3890762,height*0.8440567,width*0.3890762,height*0.8203238);
    path_30.cubicTo(width*0.3890762,height*0.7965686,width*0.4156162,height*0.7772968,width*0.4483386,height*0.7772968);
    path_30.cubicTo(width*0.4810610,height*0.7772968,width*0.5076009,height*0.7965686,width*0.5076009,height*0.8203238);
    path_30.close();

    Paint paint_30_fill = Paint()..style=PaintingStyle.fill;
    paint_30_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_30,paint_30_fill);

    Path path_31 = Path();
    path_31.moveTo(width*0.5888639,height*0.9061548);
    path_31.cubicTo(width*0.5895879,height*0.8980803,width*0.5983325,height*0.8920132,width*0.6083859,height*0.8925932);
    path_31.cubicTo(width*0.6548935,height*0.8952475,width*0.7761752,height*0.9022068,width*0.8226549,height*0.9048834);
    path_31.cubicTo(width*0.8327362,height*0.9054634,width*0.8403111,height*0.9124672,width*0.8395870,height*0.9205195);
    path_31.cubicTo(width*0.8384452,height*0.9335012,width*0.8362730,height*0.9578140,width*0.8351034,height*0.9707957);
    path_31.cubicTo(width*0.8343793,height*0.9788703,width*0.8256348,height*0.9849373,width*0.8155535,height*0.9843574);
    path_31.cubicTo(width*0.7690459,height*0.9816807,width*0.6477920,height*0.9747215,width*0.6012845,height*0.9720671);
    path_31.cubicTo(width*0.5912310,height*0.9714872,width*0.5836283,height*0.9644833,width*0.5843524,height*0.9564088);
    path_31.cubicTo(width*0.5855220,height*0.9434271,width*0.5876942,height*0.9191142,width*0.5888639,height*0.9061548);
    path_31.close();

    Paint paint_31_fill = Paint()..style=PaintingStyle.fill;
    paint_31_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_31,paint_31_fill);

    Path path_32 = Path();
    path_32.moveTo(width*0.8061406,height*0.8674104);
    path_32.cubicTo(width*0.8159155,height*0.8694402,width*0.8217916,height*0.8774255,width*0.8192574,height*0.8852547);
    path_32.cubicTo(width*0.8075887,height*0.9214117,width*0.7771499,height*1.015674,width*0.7654813,height*1.051831);
    path_32.cubicTo(width*0.7629749,height*1.059660,width*0.7529771,height*1.064367,width*0.7432022,height*1.062337);
    path_32.cubicTo(width*0.7274954,height*1.059080,width*0.6980314,height*1.052991,width*0.6822968,height*1.049734);
    path_32.cubicTo(width*0.6725218,height*1.047705,width*0.6666457,height*1.039719,width*0.6691800,height*1.031890);
    path_32.cubicTo(width*0.6808486,height*0.9957331,width*0.7112596,height*0.9014707,width*0.7229282,height*0.8653137);
    path_32.cubicTo(width*0.7254625,height*0.8574845,width*0.7354324,height*0.8527781,width*0.7452073,height*0.8548079);
    path_32.cubicTo(width*0.7609419,height*0.8580645,width*0.7904060,height*0.8641538,width*0.8061406,height*0.8674104);
    path_32.close();

    Paint paint_32_fill = Paint()..style=PaintingStyle.fill;
    paint_32_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_32,paint_32_fill);

    Path path_33 = Path();
    path_33.moveTo(width*0.8057228,height*0.8209484);
    path_33.cubicTo(width*0.8157484,height*0.8218852,width*0.8229334,height*0.8291568,width*0.8217638,height*0.8371867);
    path_33.cubicTo(width*0.8163611,height*0.8742582,width*0.8023253,height*0.9709965,width*0.7969226,height*1.008090);
    path_33.cubicTo(width*0.7957530,height*1.016120,width*0.7866742,height*1.021875,width*0.7766487,height*1.020938);
    path_33.cubicTo(width*0.7605242,height*1.019421,width*0.7302803,height*1.016611,width*0.7141558,height*1.015116);
    path_33.cubicTo(width*0.7041303,height*1.014180,width*0.6969453,height*1.006908,width*0.6981149,height*0.9988782);
    path_33.cubicTo(width*0.7034897,height*0.9617844,width*0.7175534,height*0.8650684,width*0.7229282,height*0.8279746);
    path_33.cubicTo(width*0.7240979,height*0.8199446,width*0.7331766,height*0.8141899,width*0.7432022,height*0.8151267);
    path_33.cubicTo(width*0.7593545,height*0.8166211,width*0.7895705,height*0.8194316,width*0.8057228,height*0.8209484);
    path_33.close();

    Paint paint_33_fill = Paint()..style=PaintingStyle.fill;
    paint_33_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_33,paint_33_fill);

    Path path_34 = Path();
    path_34.moveTo(width*0.8018519,height*0.7572666);
    path_34.cubicTo(width*0.8119610,height*0.7573781,width*0.8200093,height*0.7640474,width*0.8198422,height*0.7721220);
    path_34.cubicTo(width*0.8190903,height*0.8094611,width*0.8171409,height*0.9068240,width*0.8164168,height*0.9441631);
    path_34.cubicTo(width*0.8162497,height*0.9522600,width*0.8079229,height*0.9587062,width*0.7978416,height*0.9585724);
    path_34.cubicTo(width*0.7816057,height*0.9583716,width*0.7511670,height*0.9579701,width*0.7349311,height*0.9577694);
    path_34.cubicTo(width*0.7248219,height*0.9576356,width*0.7167736,height*0.9509663,width*0.7169407,height*0.9428917);
    path_34.cubicTo(width*0.7176648,height*0.9055526,width*0.7196142,height*0.8081897,width*0.7203661,height*0.7708506);
    path_34.cubicTo(width*0.7205332,height*0.7627760,width*0.7288600,height*0.7563298,width*0.7389413,height*0.7564413);
    path_34.cubicTo(width*0.7551772,height*0.7566644,width*0.7856160,height*0.7570436,width*0.8018519,height*0.7572666);
    path_34.close();

    Paint paint_34_fill = Paint()..style=PaintingStyle.fill;
    paint_34_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_34,paint_34_fill);

    Path path_35 = Path();
    path_35.moveTo(width*0.7879274,height*0.7282697);
    path_35.cubicTo(width*0.7979809,height*0.7275336,width*0.8068925,height*0.7334668,width*0.8078115,height*0.7415190);
    path_35.cubicTo(width*0.8121002,height*0.7787021,width*0.8232119,height*0.8756634,width*0.8275006,height*0.9128464);
    path_35.cubicTo(width*0.8284197,height*0.9208987,width*0.8210119,height*0.9280364,width*0.8109584,height*0.9287724);
    path_35.cubicTo(width*0.7947783,height*0.9299546,width*0.7644787,height*0.9321852,width*0.7482985,height*0.9333897);
    path_35.cubicTo(width*0.7382451,height*0.9341257,width*0.7293335,height*0.9281925,width*0.7284144,height*0.9201403);
    path_35.cubicTo(width*0.7241536,height*0.8829573,width*0.7130140,height*0.7859959,width*0.7087532,height*0.7488129);
    path_35.cubicTo(width*0.7078342,height*0.7407607,width*0.7152419,height*0.7336229,width*0.7252954,height*0.7328869);
    path_35.cubicTo(width*0.7414477,height*0.7317047,width*0.7717751,height*0.7294741,width*0.7879274,height*0.7282697);
    path_35.close();

    Paint paint_35_fill = Paint()..style=PaintingStyle.fill;
    paint_35_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_35,paint_35_fill);

    Path path_36 = Path();
    path_36.moveTo(width*0.5687849,height*0.8203238);
    path_36.cubicTo(width*0.5687849,height*0.8466888,width*0.5287382,height*0.8680796,width*0.4793901,height*0.8680796);
    path_36.cubicTo(width*0.4300697,height*0.8680796,width*0.3899953,height*0.8466888,width*0.3899953,height*0.8203238);
    path_36.cubicTo(width*0.3899953,height*0.7939589,width*0.4300697,height*0.7725458,width*0.4793901,height*0.7725458);
    path_36.cubicTo(width*0.5287382,height*0.7725458,width*0.5687849,height*0.7939589,width*0.5687849,height*0.8203238);
    path_36.close();

    Paint paint_36_fill = Paint()..style=PaintingStyle.fill;
    paint_36_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_36,paint_36_fill);

    Path path_37 = Path();
    path_37.moveTo(width*0.5904513,height*0.8254095);
    path_37.cubicTo(width*0.5904513,height*0.8517744,width*0.5503768,height*0.8731652,width*0.5010565,height*0.8731652);
    path_37.cubicTo(width*0.4517083,height*0.8731652,width*0.4116617,height*0.8517744,width*0.4116617,height*0.8254095);
    path_37.cubicTo(width*0.4116617,height*0.7990445,width*0.4517083,height*0.7776314,width*0.5010565,height*0.7776314);
    path_37.cubicTo(width*0.5503768,height*0.7776314,width*0.5904513,height*0.7990445,width*0.5904513,height*0.8254095);
    path_37.close();

    Paint paint_37_fill = Paint()..style=PaintingStyle.fill;
    paint_37_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_37,paint_37_fill);

    Path path_38 = Path();
    path_38.moveTo(width*0.5687849,height*0.8254095);
    path_38.cubicTo(width*0.5687849,height*0.8517744,width*0.5287382,height*0.8731652,width*0.4793901,height*0.8731652);
    path_38.cubicTo(width*0.4300697,height*0.8731652,width*0.3899953,height*0.8517744,width*0.3899953,height*0.8254095);
    path_38.cubicTo(width*0.3899953,height*0.7990445,width*0.4300697,height*0.7776314,width*0.4793901,height*0.7776314);
    path_38.cubicTo(width*0.5287382,height*0.7776314,width*0.5687849,height*0.7990445,width*0.5687849,height*0.8254095);
    path_38.close();

    Paint paint_38_fill = Paint()..style=PaintingStyle.fill;
    paint_38_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_38,paint_38_fill);

    Path path_39 = Path();
    path_39.moveTo(width*0.6497972,height*0.8954259);
    path_39.cubicTo(width*0.6316397,height*0.9174190,width*0.5699267,height*0.9103928,width*0.5120568,height*0.8797230);
    path_39.cubicTo(width*0.4542147,height*0.8490754,width*0.4219657,height*0.8063384,width*0.4401232,height*0.7843453);
    path_39.cubicTo(width*0.4582806,height*0.7623745,width*0.5200215,height*0.7694007,width*0.5778636,height*0.8000483);
    path_39.cubicTo(width*0.6357335,height*0.8306958,width*0.6679546,height*0.8734329,width*0.6497972,height*0.8954259);
    path_39.close();

    Paint paint_39_fill = Paint()..style=PaintingStyle.fill;
    paint_39_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_39,paint_39_fill);

    Path path_40 = Path();
    path_40.moveTo(width*0.4966842,height*0.8242050);
    path_40.cubicTo(width*0.5036464,height*0.8183387,width*0.5152037,height*0.8181156,width*0.5225279,height*0.8236696);
    path_40.cubicTo(width*0.5563086,height*0.8494100,width*0.6444223,height*0.9165045,width*0.6782030,height*0.9422226);
    path_40.cubicTo(width*0.6855272,height*0.9477989,width*0.6858057,height*0.9570779,width*0.6788713,height*0.9629442);
    path_40.cubicTo(width*0.6676761,height*0.9723571,width*0.6467059,height*0.9900229,width*0.6355107,height*0.9994581);
    path_40.cubicTo(width*0.6285485,height*1.005324,width*0.6169634,height*1.005547,width*0.6096670,height*0.9999711);
    path_40.cubicTo(width*0.5758585,height*0.9742531,width*0.4877726,height*0.9071586,width*0.4539919,height*0.8814182);
    path_40.cubicTo(width*0.4466677,height*0.8758419,width*0.4463613,height*0.8665851,width*0.4533235,height*0.8607188);
    path_40.cubicTo(width*0.4645188,height*0.8513060,width*0.4854890,height*0.8336178,width*0.4966842,height*0.8242050);
    path_40.close();

    Paint paint_40_fill = Paint()..style=PaintingStyle.fill;
    paint_40_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_40,paint_40_fill);



    Path path_42 = Path();
    path_42.moveTo(width*1.176948,height*0.8449936);
    path_42.cubicTo(width*1.189591,height*0.8502130,width*1.192460,height*0.8636854,width*1.182685,height*0.8719384);
    path_42.cubicTo(width*1.170543,height*0.8822212,width*1.140188,height*0.9078946,width*1.091591,height*0.9489588);
    path_42.lineTo(width*1.106713,height*1.004142);
    path_42.cubicTo(width*1.050932,height*1.090932,width*1.016093,height*1.145201,width*1.002141,height*1.166882);
    path_42.cubicTo(width*0.9942874,height*1.179128,width*0.9755173,height*1.183946,width*0.9602283,height*1.177656);
    path_42.cubicTo(width*0.9480583,height*1.172637,width*0.9413746,height*1.169871,width*0.9297338,height*1.165075);
    path_42.cubicTo(width*0.9129966,height*1.158183,width*0.9064243,height*1.141744,width*0.9150296,height*1.128338);
    path_42.cubicTo(width*0.9547699,height*1.066463,width*1.058451,height*0.9051065,width*1.098191,height*0.8432314);
    path_42.cubicTo(width*1.106797,height*0.8298259,width*1.127349,height*0.8245619,width*1.144058,height*0.8314542);
    path_42.cubicTo(width*1.155699,height*0.8362499,width*1.164332,height*0.8397964,width*1.176948,height*0.8449936);
    path_42.close();

    Paint paint_42_fill = Paint()..style=PaintingStyle.fill;
    paint_42_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_42,paint_42_fill);

    Path path_43 = Path();
    path_43.moveTo(width*1.152051,height*0.8573953);
    path_43.cubicTo(width*1.168872,height*0.8634178,width*1.176419,height*0.8792100,width*1.168900,height*0.8926824);
    path_43.cubicTo(width*1.134228,height*0.9549143,width*1.043747,height*1.117141,width*1.009075,height*1.179373);
    path_43.cubicTo(width*1.001556,height*1.192845,width*0.9818111,height*1.198890,width*0.9649904,height*1.192868);
    path_43.cubicTo(width*0.9529319,height*1.188541,width*0.9471671,height*1.186488,width*0.9350807,height*1.182161);
    path_43.cubicTo(width*0.9182600,height*1.176161,width*0.9107130,height*1.160347,width*0.9182322,height*1.146874);
    path_43.cubicTo(width*0.9529040,height*1.084665,width*1.043385,height*0.9224154,width*1.078057,height*0.8602058);
    path_43.cubicTo(width*1.085576,height*0.8467334,width*1.105321,height*0.8406886,width*1.122141,height*0.8466888);
    path_43.cubicTo(width*1.134200,height*0.8510160,width*1.139965,height*0.8530681,width*1.152051,height*0.8573953);
    path_43.close();

    Paint paint_43_fill = Paint()..style=PaintingStyle.fill;
    paint_43_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_43,paint_43_fill);

    Path path_44 = Path();
    path_44.moveTo(width*0.6974187,height*1.209641);
    path_44.cubicTo(width*0.6974187,height*1.209641,width*0.6974187,height*1.209641,width*0.6974187,height*1.209641);
    path_44.cubicTo(width*0.6837727,height*1.149484,width*0.6591265,height*1.091289,width*0.6242041,height*1.036931);
    path_44.cubicTo(width*0.6169634,height*1.025645,width*0.6128974,height*1.019332,width*0.5969122,height*0.9944171);
    path_44.cubicTo(width*0.5922057,height*0.9871009,width*0.5967729,height*0.9781342,width*0.6065200,height*0.9755245);
    path_44.cubicTo(width*0.6267662,height*0.9701266,width*0.6612430,height*0.9609145,width*0.6795676,height*0.9560296);
    path_44.cubicTo(width*0.6951351,height*0.9518585,width*0.7119279,height*0.9585947,width*0.7171078,height*0.9710634);
    path_44.cubicTo(width*0.7410578,height*1.028567,width*0.8060013,height*1.184659,width*0.8305919,height*1.243702);
    path_44.cubicTo(width*0.8339894,height*1.251888,width*0.8283918,height*1.260721,width*0.8181156,height*1.263353);
    path_44.cubicTo(width*0.8114876,height*1.265048,width*0.7949175,height*1.269308,width*0.7684054,height*1.276089);
    path_44.cubicTo(width*0.7647572,height*1.277026,width*0.7624736,height*1.277606,width*0.7615546,height*1.277851);
    path_44.cubicTo(width*0.7504150,height*1.280706,width*0.7367134,height*1.286260,width*0.7270499,height*1.282602);
    path_44.cubicTo(width*0.7142394,height*1.277762,width*0.7067759,height*1.261591,width*0.7045480,height*1.249278);
    path_44.cubicTo(width*0.7036011,height*1.243992,width*0.7012340,height*1.230787,width*0.6974187,height*1.209641);
    path_44.close();

    Paint paint_44_fill = Paint()..style=PaintingStyle.fill;
    paint_44_fill.color = Color(0xFF99702e);
    canvas.drawPath(path_44,paint_44_fill);
    Paint paint_14_fill = Paint()..style=PaintingStyle.fill;
    paint_14_fill.color = indicadorColor;
    canvas.drawPath(path_14,paint_14_fill);

    Path path_15 = Path();
    path_15.moveTo(width*0.9581953,height*0.4767099);
    path_15.cubicTo(width*0.9581953,height*0.5003982,width*0.9316275,height*0.5196031,width*0.8989051,height*0.5196031);
    path_15.cubicTo(width*0.8662105,height*0.5196031,width*0.8396427,height*0.5003982,width*0.8396427,height*0.4767099);
    path_15.cubicTo(width*0.8396427,height*0.4530440,width*0.8662105,height*0.4338167,width*0.8989051,height*0.4338167);
    path_15.cubicTo(width*0.9316275,height*0.4338167,width*0.9581953,height*0.4530440,width*0.9581953,height*0.4767099);
    path_15.close();

    Paint paint_15_fill = Paint()..style=PaintingStyle.fill;
    paint_15_fill.color = medioColor;
    canvas.drawPath(path_15,paint_15_fill);

    Path path_16 = Path();
    path_16.moveTo(width*1.155337,height*0.5356407);
    path_16.cubicTo(width*1.155337,height*0.5620056,width*1.128797,height*0.5834187,width*1.096075,height*0.5834187);
    path_16.cubicTo(width*1.063353,height*0.5834187,width*1.036813,height*0.5620056,width*1.036813,height*0.5356407);
    path_16.cubicTo(width*1.036813,height*0.5092757,width*1.063353,height*0.4878849,width*1.096075,height*0.4878849);
    path_16.cubicTo(width*1.128797,height*0.4878849,width*1.155337,height*0.5092757,width*1.155337,height*0.5356407);
    path_16.close();

    Paint paint_16_fill = Paint()..style=PaintingStyle.fill;
    paint_16_fill.color = anelarColor;
    canvas.drawPath(path_16,paint_16_fill);
    Path path_41 = Path();
    path_41.moveTo(width*0.5843245,height*0.8176695);
    path_41.cubicTo(width*0.5843245,height*0.8396626,width*0.5429411,height*0.8575069,width*0.4920056,height*0.8575069);
    path_41.cubicTo(width*0.4410700,height*0.8575069,width*0.3996867,height*0.8396626,width*0.3996867,height*0.8176695);
    path_41.cubicTo(width*0.3996867,height*0.7956764,width*0.4410700,height*0.7778321,width*0.4920056,height*0.7778321);
    path_41.cubicTo(width*0.5429411,height*0.7778321,width*0.5843245,height*0.7956764,width*0.5843245,height*0.8176695);
    path_41.close();

    Paint paint_41_fill = Paint()..style=PaintingStyle.fill;
    paint_41_fill.color = polegarColor;
    canvas.drawPath(path_41,paint_41_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}