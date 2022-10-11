

import 'package:ritmos_de_violao_premium/models/acorde.dart';
import 'package:ritmos_de_violao_premium/models/posicao.dart';
import 'package:ritmos_de_violao_premium/utils/campo_harmonico_utils.dart';
import 'package:ritmos_de_violao_premium/utils/constants.dart';
import 'package:ritmos_de_violao_premium/utils/enums.dart';

class DicionarioAcordesUkulele {

  static List<Acorde> getListAcordes(){

    List<Acorde> acordes = [];
    var a1 = Acorde(
      nome: 'C',
        type: TypeAcorde.UKULELE,
        posicoes: [
        Posicao(
          casa: Constants.TERCA_CASA_UKULELE,
          corda: Constants.CORDA_LA_UKULELE
        )
      ],
      labels: ['G', 'C', 'E', 'C'],
      videoId: '3zRnRQ8QBsQ'
    );
    acordes.add(a1);

    var a2 = Acorde(
        nome: 'D',
        type: TypeAcorde.UKULELE,
        posicoes: [
          Posicao(
              casa: Constants.SEGUNDA_CASA_UKULELE,
              corda: Constants.CORDA_SOL_UKULELE
          ),
          Posicao(
              casa: Constants.SEGUNDA_CASA_UKULELE,
              corda: Constants.CORDA_DO_UKULELE
          ),
          Posicao(
              casa: Constants.SEGUNDA_CASA_UKULELE,
              corda: Constants.CORDA_MI_UKULELE
          ),
        ],
        labels: ['A', 'D', 'F#', 'A'],
        videoId: '_cphMFwNUT0'
    );
    acordes.add(a2);

    var a3 = Acorde(
        nome: 'E',
        type: TypeAcorde.UKULELE,
        posicoes: [
          Posicao(
              casa: Constants.SEGUNDA_CASA_UKULELE,
              corda: Constants.CORDA_LA_UKULELE
          ),
          Posicao(
              casa: Constants.QUARTA_CASA_UKULELE,
              corda: Constants.CORDA_SOL_UKULELE
          ),
          Posicao(
              casa: Constants.QUARTA_CASA_UKULELE,
              corda: Constants.CORDA_DO_UKULELE
          ),
          Posicao(
              casa: Constants.QUARTA_CASA_UKULELE,
              corda: Constants.CORDA_MI_UKULELE
          ),
        ],
        labels: ['B', 'E', 'G#', 'B'],
        videoId: 'EkwKpo1o8GQ'
    );
    acordes.add(a3);

    var a4 = Acorde(
      nome: 'F',
        type: TypeAcorde.UKULELE,
        posicoes: [
        Posicao(
            casa: Constants.PRIMEIRA_CASA_UKULELE,
            corda: Constants.CORDA_MI_UKULELE
        ),
        Posicao(
            casa: Constants.SEGUNDA_CASA_UKULELE,
            corda: Constants.CORDA_SOL_UKULELE
        ),
      ],
      labels: ['A', 'C', 'F', 'A'],
      videoId: 'phIzy3gzbxk'
    );
    acordes.add(a4);


    var a5 = Acorde(
        nome: 'G',
        type: TypeAcorde.UKULELE,
        posicoes: [
          Posicao(
              casa: Constants.TERCA_CASA_UKULELE,
              corda: Constants.CORDA_MI_UKULELE
          ),
          Posicao(
              casa: Constants.SEGUNDA_CASA_UKULELE,
              corda: Constants.CORDA_DO_UKULELE
          ),
          Posicao(
              casa: Constants.SEGUNDA_CASA_UKULELE,
              corda: Constants.CORDA_LA_UKULELE
          ),
        ],
        labels: ['G', 'D', 'G', 'B'],
      videoId: 'p7T2x9hIaHQ'
    );
    acordes.add(a5);

    var a6 = Acorde(
        nome: 'A',
        type: TypeAcorde.UKULELE,
        posicoes: [
          Posicao(
              casa: Constants.PRIMEIRA_CASA_UKULELE,
              corda: Constants.CORDA_DO_UKULELE
          ),
          Posicao(
              casa: Constants.SEGUNDA_CASA_UKULELE,
              corda: Constants.CORDA_SOL_UKULELE
          ),
        ],
        labels: ['A', 'C#', 'E', 'A'],
      videoId: 'dlWlBBCLCsc'
    );
    acordes.add(a6);

    var a7 = Acorde(
        nome: 'B',
        type: TypeAcorde.UKULELE,
        posicoes: [
          Posicao(
              casa: Constants.SEGUNDA_CASA_UKULELE,
              corda: Constants.CORDA_MI_UKULELE
          ),
          Posicao(
              casa: Constants.SEGUNDA_CASA_UKULELE,
              corda: Constants.CORDA_LA_UKULELE
          ),
          Posicao(
              casa: Constants.TERCA_CASA_UKULELE,
              corda: Constants.CORDA_DO_UKULELE
          ),
          Posicao(
              casa: Constants.QUARTA_CASA_UKULELE,
              corda: Constants.CORDA_SOL_UKULELE
          ),
        ],
        labels: ['B', 'D#', 'F#', 'B'],
        videoId: 'BWZQudwrn2U'
    );
    acordes.add(a7);

    var a8 = Acorde(
      nome: 'C#/Db',
        type: TypeAcorde.UKULELE,
        posicoes: [
        Posicao(
            casa: Constants.PRIMEIRA_CASA_UKULELE,
            corda: Constants.CORDA_SOL_UKULELE
        ),
        Posicao(
            casa: Constants.PRIMEIRA_CASA_UKULELE,
            corda: Constants.CORDA_DO_UKULELE
        ),
        Posicao(
            casa: Constants.PRIMEIRA_CASA_UKULELE,
            corda: Constants.CORDA_MI_UKULELE
        ),
        Posicao(
            casa: Constants.QUARTA_CASA_UKULELE,
            corda: Constants.CORDA_LA_UKULELE
        ),
      ],
      labels: ['G#', 'C#', 'F', 'C#'],
      videoId: 'oZxccGlVog8'
    );
    acordes.add(a8);


    var a9 = Acorde(
        nome: 'D#/Eb',
        type: TypeAcorde.UKULELE,
        posicoes: [
          Posicao(
              casa: Constants.TERCA_CASA_UKULELE,
              corda: Constants.CORDA_DO_UKULELE
          ),
          Posicao(
              casa: Constants.TERCA_CASA_UKULELE,
              corda: Constants.CORDA_MI_UKULELE
          ),
          Posicao(
              casa: Constants.PRIMEIRA_CASA_UKULELE,
              corda: Constants.CORDA_LA_UKULELE
          ),
        ],
        labels: ['G', 'D#', 'G', 'A#'],
      videoId: 'GLzzo0yf1hQ'
    );
    acordes.add(a9);

    var a10 = Acorde(
        nome: 'F#/Gb',
        type: TypeAcorde.UKULELE,
        posicoes: [
          Posicao(
              casa: Constants.TERCA_CASA_UKULELE,
              corda: Constants.CORDA_SOL_UKULELE
          ),
          Posicao(
              casa: Constants.SEGUNDA_CASA_UKULELE,
              corda: Constants.CORDA_MI_UKULELE
          ),
          Posicao(
              casa: Constants.PRIMEIRA_CASA_UKULELE,
              corda: Constants.CORDA_DO_UKULELE
          ),
          Posicao(
              casa: Constants.PRIMEIRA_CASA_UKULELE,
              corda: Constants.CORDA_LA_UKULELE
          ),
        ],
        labels: ['A#', 'C#', 'F#', 'A#'],
      videoId: 'O1FuDkybZuk'
    );
    acordes.add(a10);

    var a11 = Acorde(
        nome: 'G#/Ab',
        textNumeroCasa: '3ª',
        type: TypeAcorde.UKULELE,
        posicoes: [
          Posicao(
              casa: Constants.TERCA_CASA_UKULELE,
              corda: Constants.CORDA_SOL_UKULELE
          ),
          Posicao(
              casa: Constants.SEGUNDA_CASA_UKULELE,
              corda: Constants.CORDA_MI_UKULELE
          ),
          Posicao(
              casa: Constants.PRIMEIRA_CASA_UKULELE,
              corda: Constants.CORDA_DO_UKULELE
          ),
          Posicao(
              casa: Constants.PRIMEIRA_CASA_UKULELE,
              corda: Constants.CORDA_LA_UKULELE
          ),
        ],
        labels: ['C', 'D#', 'G#', 'C'],
         videoId: 'TkvHyMCSgoA'
    );
    acordes.add(a11);

    var a12 = Acorde(
      nome: 'A#/Bb',
      labels: ['A#', 'D', 'F', 'A#'],
        type: TypeAcorde.UKULELE,
        posicoes: [
        Posicao(
            casa: Constants.TERCA_CASA_UKULELE,
            corda: Constants.CORDA_SOL_UKULELE
        ),
        Posicao(
            casa: Constants.SEGUNDA_CASA_UKULELE,
            corda: Constants.CORDA_DO_UKULELE
        ),
        Posicao(
            casa: Constants.PRIMEIRA_CASA_UKULELE,
            corda: Constants.CORDA_MI_UKULELE
        ),
        Posicao(
            casa: Constants.PRIMEIRA_CASA_UKULELE,
            corda: Constants.CORDA_LA_UKULELE
        ),
      ],
      videoId: 'j70nadqYRA8'
    );
    acordes.add(a12);

    var a13 = Acorde(
      nome: 'Cm',
        type: TypeAcorde.UKULELE,
        posicoes: [
        Posicao(
          casa: Constants.TERCA_CASA_UKULELE,
          corda: Constants.CORDA_LA_UKULELE
        ),
        Posicao(
            casa: Constants.TERCA_CASA_UKULELE,
            corda: Constants.CORDA_MI_UKULELE
        ),
        Posicao(
            casa: Constants.TERCA_CASA_UKULELE,
            corda: Constants.CORDA_DO_UKULELE
        ),
      ],
      labels: ['G', 'Eb', 'G', 'C'],
      videoId: 'k4xYv_44Rxo'
    );
    acordes.add(a13);

    var a14 = Acorde(
      nome: 'Dm',
      labels: ['A', 'D', 'F', 'A'],
        type: TypeAcorde.UKULELE,
        posicoes: [
        Posicao(
           casa: Constants.PRIMEIRA_CASA_UKULELE,
           corda: Constants.CORDA_MI_UKULELE
        ),
        Posicao(
          casa: Constants.SEGUNDA_CASA_UKULELE,
          corda: Constants.CORDA_DO_UKULELE
        ),
        Posicao(
            casa: Constants.SEGUNDA_CASA_UKULELE,
            corda: Constants.CORDA_SOL_UKULELE
        ),
      ],
      videoId: 'B87XOvrUrJ4'
    );
    acordes.add(a14);

    var a15 = Acorde(
      nome: 'Em',
      labels: ['G', 'E', 'E', 'B'],
        type: TypeAcorde.UKULELE,
        posicoes: [
        Posicao(
          casa: Constants.SEGUNDA_CASA_UKULELE,
          corda: Constants.CORDA_LA_UKULELE
        ),
        Posicao(
            casa: Constants.QUARTA_CASA_UKULELE,
            corda: Constants.CORDA_DO_UKULELE
        ),
      ],
      videoId: 'Mn8tfqPJGII'
    );
    acordes.add(a15);

    var a16 = Acorde(
        nome: 'Fm',
        labels: ['G#', 'C', 'F', 'C'],
        type: TypeAcorde.UKULELE,
        posicoes: [
          Posicao(
              casa: Constants.PRIMEIRA_CASA_UKULELE,
              corda: Constants.CORDA_SOL_UKULELE
          ),
          Posicao(
              casa: Constants.PRIMEIRA_CASA_UKULELE,
              corda: Constants.CORDA_MI_UKULELE
          ),
          Posicao(
              casa: Constants.TERCA_CASA_UKULELE,
              corda: Constants.CORDA_LA_UKULELE
          ),
        ],
      videoId: 'xtsJEBrCesI'
    );
    acordes.add(a16);

    var a17 = Acorde(
        nome: 'Am',
        labels: ['A', 'C', 'E', 'A'],
        type: TypeAcorde.UKULELE,
        posicoes: [
          Posicao(
              casa: Constants.SEGUNDA_CASA_UKULELE,
              corda: Constants.CORDA_SOL_UKULELE
          ),
        ],
      videoId: 'V_wevB5tBkM'
    );
    acordes.add(a17);

    var a18 = Acorde(
        nome: 'Bm',
        labels: ['B', 'D', 'F#', 'B'],
        type: TypeAcorde.UKULELE,
        posicoes: [
          Posicao(
              casa: Constants.SEGUNDA_CASA_UKULELE,
              corda: Constants.CORDA_LA_UKULELE
          ),
          Posicao(
              casa: Constants.SEGUNDA_CASA_UKULELE,
              corda: Constants.CORDA_MI_UKULELE
          ),
          Posicao(
              casa: Constants.SEGUNDA_CASA_UKULELE,
              corda: Constants.CORDA_DO_UKULELE
          ),
          Posicao(
              casa: Constants.QUARTA_CASA_UKULELE,
              corda: Constants.CORDA_SOL_UKULELE
          ),
        ],
      videoId: 'rz8ILhwQIu0'
    );
    acordes.add(a18);

    var a19 = Acorde(
       nome: 'C#m/Dbm',
       labels: ['G#', 'C#', 'E', 'C#'],
        type: TypeAcorde.UKULELE,
        posicoes: [
         Posicao(
             casa: Constants.PRIMEIRA_CASA_UKULELE,
             corda: Constants.CORDA_SOL_UKULELE
         ),
         Posicao(
             casa: Constants.PRIMEIRA_CASA_UKULELE,
             corda: Constants.CORDA_DO_UKULELE
         ),
         Posicao(
             casa: Constants.QUARTA_CASA_UKULELE,
             corda: Constants.CORDA_LA_UKULELE
         ),
       ],
      videoId: 'iHKLd0i3IKk'
    );
    acordes.add(a19);

    var a20 = Acorde(
        nome: 'D#m/Ebm',
        labels: ['A#', 'D#', 'F#', 'A#'],
        type: TypeAcorde.UKULELE,
        posicoes: [
          Posicao(
              casa: Constants.PRIMEIRA_CASA_UKULELE,
              corda: Constants.CORDA_LA_UKULELE
          ),
          Posicao(
              casa: Constants.SEGUNDA_CASA_UKULELE,
              corda: Constants.CORDA_MI_UKULELE
          ),
          Posicao(
              casa: Constants.TERCA_CASA_UKULELE,
              corda: Constants.CORDA_DO_UKULELE
          ),
          Posicao(
              casa: Constants.TERCA_CASA_UKULELE,
              corda: Constants.CORDA_SOL_UKULELE
          ),
        ],
       videoId: 'jqo0niYXKtI'
    );
    acordes.add(a20);

    var a21 = Acorde(
      nome: 'F#m/Gbm',
      labels: ['A', 'C#', 'F#', 'A'],
        type: TypeAcorde.UKULELE,
        posicoes: [
        Posicao(
            casa: Constants.PRIMEIRA_CASA_UKULELE,
            corda: Constants.CORDA_DO_UKULELE
        ),
        Posicao(
          casa: Constants.SEGUNDA_CASA_UKULELE,
          corda: Constants.CORDA_SOL_UKULELE
        ),
        Posicao(
            casa: Constants.SEGUNDA_CASA_UKULELE,
            corda: Constants.CORDA_MI_UKULELE
        ),
      ],
      videoId: 'WZi1TPTiMkk'
    );
    acordes.add(a21);

    var a22 = Acorde(
      nome: 'G#m/Abm',
      labels: ['G#', 'D#', 'G#', 'B'],
        type: TypeAcorde.UKULELE,
        posicoes: [
        Posicao(
          casa: Constants.PRIMEIRA_CASA_UKULELE,
          corda: Constants.CORDA_SOL_UKULELE,
        ),
        Posicao(
          casa: Constants.SEGUNDA_CASA_UKULELE,
          corda: Constants.CORDA_LA_UKULELE,
        ),
        Posicao(
          casa: Constants.TERCA_CASA_UKULELE,
          corda: Constants.CORDA_DO_UKULELE,
        ),
        Posicao(
          casa: Constants.QUARTA_CASA_UKULELE,
          corda: Constants.CORDA_MI_UKULELE,
        ),
      ],
      videoId: '93HSwcBDsC8'
    );
    acordes.add(a22);

    var a23 = Acorde(
      nome: 'A#m/Bbm',
        type: TypeAcorde.UKULELE,
        posicoes: [
        Posicao(
          casa: Constants.PRIMEIRA_CASA_UKULELE,
          corda: Constants.CORDA_LA_UKULELE,
        ),
        Posicao(
          casa: Constants.PRIMEIRA_CASA_UKULELE,
          corda: Constants.CORDA_MI_UKULELE,
        ),
        Posicao(
          casa: Constants.PRIMEIRA_CASA_UKULELE,
          corda: Constants.CORDA_DO_UKULELE,
        ),
        Posicao(
          casa: Constants.TERCA_CASA_UKULELE,
          corda: Constants.CORDA_SOL_UKULELE,
        ),
      ],
      labels: ['A#', 'C#', 'F', 'A#'],
      videoId: 'm7LCTHbEfz8'
    );
    acordes.add(a23);

    var a24 = Acorde(
      nome: 'C°',
      labels: ['C', 'Eb', 'Gb', 'C'],
      textNumeroCasa: '2ª',
        type: TypeAcorde.UKULELE,
        posicoes: [
        Posicao(
          casa: Constants.PRIMEIRA_CASA_UKULELE,
          corda: Constants.CORDA_MI_UKULELE,
        ),
        Posicao(
          casa: Constants.SEGUNDA_CASA_UKULELE,
          corda: Constants.CORDA_DO_UKULELE,
        ),
        Posicao(
          casa: Constants.SEGUNDA_CASA_UKULELE,
          corda: Constants.CORDA_LA_UKULELE,
        ),
        Posicao(
          casa: Constants.QUARTA_CASA_UKULELE,
          corda: Constants.CORDA_SOL_UKULELE,
        ),
      ],
      videoId: 'Tj_z2rwxtJ0'
    );
    acordes.add(a24);

    var a25 = Acorde(
        nome: 'D°',
        labels: ['D', 'F', 'Ab', 'D'],
        textNumeroCasa: '4ª',
        type: TypeAcorde.UKULELE,
        posicoes: [
          Posicao(
            casa: Constants.PRIMEIRA_CASA_UKULELE,
            corda: Constants.CORDA_MI_UKULELE,
          ),
          Posicao(
            casa: Constants.SEGUNDA_CASA_UKULELE,
            corda: Constants.CORDA_DO_UKULELE,
          ),
          Posicao(
            casa: Constants.SEGUNDA_CASA_UKULELE,
            corda: Constants.CORDA_LA_UKULELE,
          ),
          Posicao(
            casa: Constants.QUARTA_CASA_UKULELE,
            corda: Constants.CORDA_SOL_UKULELE,
          ),
        ],
      videoId: 'Csd9TJ897YA'
    );
    acordes.add(a25);

    var a26 = Acorde(
      nome: 'E°',
      labels: ['G', 'E', 'E', 'Bb'],
        type: TypeAcorde.UKULELE,
        posicoes: [
        Posicao(
          casa: Constants.PRIMEIRA_CASA_UKULELE,
          corda: Constants.CORDA_LA_UKULELE,
        ),
        Posicao(
          casa: Constants.QUARTA_CASA_UKULELE,
          corda: Constants.CORDA_DO_UKULELE,
        ),
      ],
      videoId: 'qI-Ao-Pthx8'
    );
    acordes.add(a26);

    var a27 = Acorde(
      nome: 'F°',
      labels: ['B', 'F', 'Ab', 'B'],
      textNumeroCasa: '2ª',
        type: TypeAcorde.UKULELE,
        posicoes: [
        Posicao(
          casa: Constants.PRIMEIRA_CASA_UKULELE,
          corda: Constants.CORDA_LA_UKULELE,
        ),
        Posicao(
          casa: Constants.TERCA_CASA_UKULELE,
          corda: Constants.CORDA_SOL_UKULELE,
        ),
        Posicao(
          casa: Constants.TERCA_CASA_UKULELE,
          corda: Constants.CORDA_MI_UKULELE,
        ),
        Posicao(
          casa: Constants.QUARTA_CASA_UKULELE,
          corda: Constants.CORDA_DO_UKULELE,
        ),
      ],
      videoId: '0ab1GWkuwsU'
    );
    acordes.add(a27);

    var a28 = Acorde(
      nome: 'G°',
      labels: ['G', 'Db', 'G', 'Bb'],
        type: TypeAcorde.UKULELE,
        posicoes: [
        Posicao(
          casa: Constants.PRIMEIRA_CASA_UKULELE,
          corda: Constants.CORDA_DO_UKULELE,
        ),
        Posicao(
          casa: Constants.PRIMEIRA_CASA_UKULELE,
          corda: Constants.CORDA_LA_UKULELE,
        ),
        Posicao(
          casa: Constants.TERCA_CASA_UKULELE,
          corda: Constants.CORDA_MI_UKULELE,
        ),
      ],
      videoId: 'MXYxENYE-vc'
    );
    acordes.add(a28);

    var a29 = Acorde(
      nome: 'A°',
      labels: ['A', 'Eb', 'A', 'C'],
      textNumeroCasa: '2ª',
        type: TypeAcorde.UKULELE,
        posicoes: [
        Posicao(
          casa: Constants.PRIMEIRA_CASA_UKULELE,
          corda: Constants.CORDA_SOL_UKULELE,
        ),
        Posicao(
          casa: Constants.SEGUNDA_CASA_UKULELE,
          corda: Constants.CORDA_DO_UKULELE,
        ),
        Posicao(
          casa: Constants.SEGUNDA_CASA_UKULELE,
          corda: Constants.CORDA_LA_UKULELE,
        ),
        Posicao(
          casa: Constants.QUARTA_CASA_UKULELE,
          corda: Constants.CORDA_MI_UKULELE,
        ),
      ],
      videoId: 'Sew7HQZCi48'
    );
    acordes.add(a29);

    var a30 = Acorde(
        nome: 'B°',
        labels: ['B', 'D', 'F', 'B'],
        type: TypeAcorde.UKULELE,
        posicoes: [
          Posicao(
            casa: Constants.PRIMEIRA_CASA_UKULELE,
            corda: Constants.CORDA_MI_UKULELE,
          ),
          Posicao(
            casa: Constants.SEGUNDA_CASA_UKULELE,
            corda: Constants.CORDA_DO_UKULELE,
          ),
          Posicao(
            casa: Constants.SEGUNDA_CASA_UKULELE,
            corda: Constants.CORDA_LA_UKULELE,
          ),
          Posicao(
            casa: Constants.QUARTA_CASA_UKULELE,
            corda: Constants.CORDA_SOL_UKULELE,
          ),
        ],
      videoId: 'ngExHZo8VVI'
    );
    acordes.add(a30);

    var a31 = Acorde(
      nome: 'C#°/Db°',
      labels: ['G', 'C#', 'E', 'C#'],
        type: TypeAcorde.UKULELE,
        posicoes: [
        Posicao(
          casa: Constants.PRIMEIRA_CASA_UKULELE,
          corda: Constants.CORDA_DO_UKULELE,
        ),
        Posicao(
          casa: Constants.QUARTA_CASA_UKULELE,
          corda: Constants.CORDA_LA_UKULELE,
        ),
      ],
      videoId: 'knVZTpeHbr0'
    );
    acordes.add(a31);

    var a32 = Acorde(
        nome: 'D#°/Eb°',
        labels: ['A', 'D#', 'F#', 'A'],
        type: TypeAcorde.UKULELE,
        posicoes: [
          Posicao(
            casa: Constants.SEGUNDA_CASA_UKULELE,
            corda: Constants.CORDA_SOL_UKULELE,
          ),
          Posicao(
            casa: Constants.SEGUNDA_CASA_UKULELE,
            corda: Constants.CORDA_MI_UKULELE,
          ),
          Posicao(
            casa: Constants.TERCA_CASA_UKULELE,
            corda: Constants.CORDA_DO_UKULELE,
          ),
        ],
      videoId: 'YQdBskpJ58E'
    );
    acordes.add(a32);

    var a33 = Acorde(
        nome: 'F#°/Gb°',
        labels: ['A', 'C', 'F#', 'A'],
        type: TypeAcorde.UKULELE,
        posicoes: [
          Posicao(
            casa: Constants.SEGUNDA_CASA_UKULELE,
            corda: Constants.CORDA_SOL_UKULELE,
          ),
          Posicao(
            casa: Constants.SEGUNDA_CASA_UKULELE,
            corda: Constants.CORDA_MI_UKULELE,
          ),
        ],
      videoId: 'dLnWu1dr_HQ'
    );
    acordes.add(a33);

    var a34 = Acorde(
        nome: 'G#°/Ab°',
        labels: ['G#', 'D', 'G#', 'B'],
        type: TypeAcorde.UKULELE,
        posicoes: [
          Posicao(
            casa: Constants.PRIMEIRA_CASA_UKULELE,
            corda: Constants.CORDA_SOL_UKULELE,
          ),
          Posicao(
            casa: Constants.SEGUNDA_CASA_UKULELE,
            corda: Constants.CORDA_DO_UKULELE,
          ),
          Posicao(
            casa: Constants.SEGUNDA_CASA_UKULELE,
            corda: Constants.CORDA_LA_UKULELE,
          ),
          Posicao(
            casa: Constants.QUARTA_CASA_UKULELE,
            corda: Constants.CORDA_MI_UKULELE,
          ),
        ],
      videoId: 'w_TxrzvX7-k'
    );
    acordes.add(a34);

    var a35 = Acorde(
        nome: 'A#°/Bb°',
        labels: ['A#', 'C#', 'E', 'A#'],
        type: TypeAcorde.UKULELE,
        posicoes: [
          Posicao(
            casa: Constants.PRIMEIRA_CASA_UKULELE,
            corda: Constants.CORDA_DO_UKULELE,
          ),
          Posicao(
            casa: Constants.PRIMEIRA_CASA_UKULELE,
            corda: Constants.CORDA_LA_UKULELE,
          ),
          Posicao(
            casa: Constants.TERCA_CASA_UKULELE,
            corda: Constants.CORDA_SOL_UKULELE,
          ),
        ],
      videoId: 'JWHuD5f587Q'
    );
    acordes.add(a35);

    var a36 = Acorde(
      nome: 'Gm',
      labels: ['G', 'D', 'G', 'Bb'],
      type: TypeAcorde.UKULELE,
      posicoes: [
        Posicao(
          casa: Constants.PRIMEIRA_CASA_UKULELE,
          corda: Constants.CORDA_LA_UKULELE,
        ),
        Posicao(
          casa: Constants.SEGUNDA_CASA_UKULELE,
          corda: Constants.CORDA_DO_UKULELE,
        ),
        Posicao(
          casa: Constants.TERCA_CASA_UKULELE,
          corda: Constants.CORDA_MI_UKULELE,
        ),
      ],
      videoId: 'WHniI-69WUM'
    );
    acordes.add(a36);

    return acordes;
  }

  static List<Acorde> getCampoHarmonico(String de){
    List<Acorde> todosAcordes = getListAcordes();
    List<String> campo = getCampoHarmonicoDe(de);
    var list = campo.map((nomeAcorde) => todosAcordes.where((acorde) => acorde.nome.startsWith(nomeAcorde) &&
        acorde.nome.endsWith(nomeAcorde)).toList()).toList();

    var campoHarmonico = list.map((listaInterna) => listaInterna.first).toList();
    return campoHarmonico;
  }

  static List<Acorde> getAcordesPreviewHome() {
    List<Acorde> todosAcordes = getListAcordes();

    List<Acorde> novaLista = [];
    novaLista.add(todosAcordes.firstWhere((element) => element.nome == 'C'));
    novaLista.add(todosAcordes.firstWhere((element) => element.nome == 'C#/Db'));
    novaLista.add(todosAcordes.firstWhere((element) => element.nome == 'D'));
    novaLista.add(todosAcordes.firstWhere((element) => element.nome == 'D#/Eb'));
    novaLista.add(todosAcordes.firstWhere((element) => element.nome == 'E'));
    novaLista.add(todosAcordes.firstWhere((element) => element.nome == 'F'));
    novaLista.add(todosAcordes.firstWhere((element) => element.nome == 'F#/Gb'));
    novaLista.add(todosAcordes.firstWhere((element) => element.nome == 'G'));
    novaLista.add(todosAcordes.firstWhere((element) => element.nome == 'G#/Ab'));
    novaLista.add(todosAcordes.firstWhere((element) => element.nome == 'A'));
    novaLista.add(todosAcordes.firstWhere((element) => element.nome == 'A#/Bb'));
    novaLista.add(todosAcordes.firstWhere((element) => element.nome == 'B'));
    return novaLista;
  }
}