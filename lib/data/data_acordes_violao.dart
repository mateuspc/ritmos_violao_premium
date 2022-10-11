


import 'package:ritmos_de_violao_premium/models/acorde.dart';
import 'package:ritmos_de_violao_premium/models/pestana.dart';
import 'package:ritmos_de_violao_premium/models/posicao.dart';
import 'package:ritmos_de_violao_premium/utils/campo_harmonico_utils.dart';
import 'package:ritmos_de_violao_premium/utils/constants.dart';
import 'package:ritmos_de_violao_premium/utils/enums.dart';

class DicionarioAcordesViolao {

  static List<Acorde> getListAcordes() {
    List<Acorde> acordes = [];
    var a1 = Acorde(
        nome: 'A#/Bb',
        type: TypeAcorde.VIOLAO,
        pestana: Pestana(
            casa: Constants.PESTANA_NA_CASA_1_VIOLAO,
            tamanho: Constants.ATE_QUARTA_CORDA_DX1_VIOLAO
        ), posicoes: [
      Posicao(
          casa: Constants.DEDO_NA_CASA_3_VIOLAO,
          corda: Constants.CORDA_4_VIOLAO,
          text: '2'
      ),
      Posicao(
          casa: Constants.DEDO_NA_CASA_3_VIOLAO,
          corda: Constants.CORDA_3_VIOLAO,
          text: '3'
      ),
      Posicao(
          casa: Constants.DEDO_NA_CASA_3_VIOLAO,
          corda: Constants.CORDA_2_VIOLAO,
          text: '4'
      ),
    ],
        labelsSimbolsViolao: [
          'X', '0', 'O', 'O', 'O', 'O'
        ],
    );
    acordes.add(a1);

    var a2 = Acorde(
      nome: 'A#°/Bb°',
        type: TypeAcorde.VIOLAO,
        posicoes: [
        Posicao(
            casa: Constants.DEDO_NA_CASA_1_VIOLAO,
            corda: Constants.CORDA_5_VIOLAO,
            text: '1'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_4_VIOLAO,
            text: '2'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_2_VIOLAO,
            text: '3'
        ),
      ],
      labelsSimbolsViolao: ['X', '0', 'O', 'O', 'O', 'O']
    );
    acordes.add(a2);

    var a3 = Acorde(
        nome: 'A#m/Bbm',
        type: TypeAcorde.VIOLAO,
        pestana: Pestana(
            casa: Constants.PESTANA_NA_CASA_1_VIOLAO,
            tamanho: Constants.ATE_QUINTA_CORDA_DX1_VIOLAO
        ),
        posicoes: [
          Posicao(
              casa: Constants.DEDO_NA_CASA_2_VIOLAO,
              corda: Constants.CORDA_2_VIOLAO,
              text: '2'
          ),
          Posicao(
              casa: Constants.DEDO_NA_CASA_3_VIOLAO,
              corda: Constants.CORDA_4_VIOLAO,
              text: '3'
          ),
          Posicao(
              casa: Constants.DEDO_NA_CASA_3_VIOLAO,
              corda: Constants.CORDA_3_VIOLAO,
              text: '4'
          ),
        ],
        labelsSimbolsViolao: ['X', '0', 'O', 'O', 'O', 'O']
    );
    acordes.add(a3);

    var a4 = Acorde(
        type: TypeAcorde.VIOLAO,
        posicoes: [
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_4_VIOLAO,
            text: '2'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_3_VIOLAO,
            text: '3'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_2_VIOLAO,
            text: '4'
        ),
      ], nome: 'A',
        labelsSimbolsViolao: ['X', '0', 'O', 'O', 'O', 'O']
    );
    acordes.add(a4);

    var a5 = Acorde(
      nome: 'A°',
        type: TypeAcorde.VIOLAO,
        posicoes: [
        Posicao(
            casa: Constants.DEDO_NA_CASA_4_VIOLAO,
            corda: Constants.CORDA_4_VIOLAO,
            text: '1'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_4_VIOLAO,
            corda: Constants.CORDA_2_VIOLAO,
            text: '2'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_5_VIOLAO,
            corda: Constants.CORDA_6_VIOLAO,
            text: '3'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_5_VIOLAO,
            corda: Constants.CORDA_3_VIOLAO,
            text: '4'
        ),
      ],
      labelsSimbolsViolao: ['0', 'X', 'O', 'O', 'O', 'X']
    );
    acordes.add(a5);

    var a6 = Acorde(
      nome: 'Am',
        type: TypeAcorde.VIOLAO,
        labelsSimbolsViolao: ['X', '0', 'O', 'O', 'O', 'O'],
      posicoes: [
        Posicao(
            casa: Constants.DEDO_NA_CASA_1_VIOLAO,
            corda: Constants.CORDA_2_VIOLAO,
            text: '1'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_4_VIOLAO,
            text: '2'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_3_VIOLAO,
            text: '3'
        ),
      ]
    );
    acordes.add(a6);

    var a7 = Acorde(
        nome: 'B',
      type: TypeAcorde.VIOLAO,
      pestana: Pestana(
            casa: Constants.PESTANA_NA_CASA_2_VIOLAO,
            tamanho: Constants.ATE_QUINTA_CORDA_DX1_VIOLAO
        ),
       posicoes: [
         Posicao(
             casa: Constants.DEDO_NA_CASA_4_VIOLAO,
             corda: Constants.CORDA_4_VIOLAO,
             text: '2'
         ),
         Posicao(
             casa: Constants.DEDO_NA_CASA_4_VIOLAO,
             corda: Constants.CORDA_3_VIOLAO,
             text: '3'
         ),
         Posicao(
             casa: Constants.DEDO_NA_CASA_4_VIOLAO,
             corda: Constants.CORDA_2_VIOLAO,
             text: '4'
         ),
       ],
       labelsSimbolsViolao: ['X', '0', 'O', 'O', 'O', 'O'],
    );
    acordes.add(a7);

    var a8 = Acorde(
      nome: 'B°',
      type: TypeAcorde.VIOLAO,
      pestana: Pestana(
          casa: Constants.PESTANA_NA_CASA_1_VIOLAO,
          tamanho: Constants.ATE_TERCEIRA_CORDA_DX1_VIOLAO
      ),
      posicoes: [
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_5_VIOLAO,
            text: '2'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_3_VIOLAO,
            corda: Constants.CORDA_4_VIOLAO,
            text: '3'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_3_VIOLAO,
            corda: Constants.CORDA_2_VIOLAO,
            text: '4'
        ),
      ],
      labelsSimbolsViolao: ['X', '0', 'O', 'O', 'O', 'O'],
    );
    acordes.add(a8);

    var a9 = Acorde(
      nome: 'Bm',
      type: TypeAcorde.VIOLAO,
      pestana: Pestana(
          casa: Constants.PESTANA_NA_CASA_2_VIOLAO,
          tamanho: Constants.ATE_QUINTA_CORDA_DX1_VIOLAO
      ),
      posicoes: [
        Posicao(
            casa: Constants.DEDO_NA_CASA_3_VIOLAO,
            corda: Constants.CORDA_2_VIOLAO,
            text: '2'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_4_VIOLAO,
            corda: Constants.CORDA_4_VIOLAO,
            text: '3'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_4_VIOLAO,
            corda: Constants.CORDA_3_VIOLAO,
            text: '4'
        ),
      ],
      labelsSimbolsViolao: ['X', '0', 'O', 'O', 'O', 'O'],
    );
    acordes.add(a9);

    var a10 = Acorde(
      nome: 'C#/Db',
      textNumeroCasa: '4ª',
      type: TypeAcorde.VIOLAO,
      pestana: Pestana(
          casa: Constants.PESTANA_NA_CASA_1_VIOLAO,
          tamanho: Constants.ATE_QUINTA_CORDA_DX1_VIOLAO
      ),
      posicoes: [
        Posicao(
            casa: Constants.DEDO_NA_CASA_3_VIOLAO,
            corda: Constants.CORDA_4_VIOLAO,
            text: '2'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_3_VIOLAO,
            corda: Constants.CORDA_3_VIOLAO,
            text: '3'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_3_VIOLAO,
            corda: Constants.CORDA_2_VIOLAO,
            text: '4'
        ),
      ],
      labelsSimbolsViolao: ['X', '0', 'O', 'O', 'O', 'O'],
    );
    acordes.add(a10);

    var a11 = Acorde(
      nome: 'C#°/Db°',
      type: TypeAcorde.VIOLAO,
      pestana: Pestana(
          casa: Constants.PESTANA_NA_CASA_3_VIOLAO,
          tamanho: Constants.ATE_TERCEIRA_CORDA_DX1_VIOLAO
      ),
      posicoes: [
        Posicao(
            casa: Constants.DEDO_NA_CASA_4_VIOLAO,
            corda: Constants.CORDA_5_VIOLAO,
            text: '2'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_5_VIOLAO,
            corda: Constants.CORDA_4_VIOLAO,
            text: '3'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_5_VIOLAO,
            corda: Constants.CORDA_2_VIOLAO,
            text: '4'
        ),
      ],
      labelsSimbolsViolao: ['X', '0', 'O', 'O', 'O', 'O'],
    );
    acordes.add(a11);

    var a12 = Acorde(
      nome: 'C#m/Dbm',
      textNumeroCasa: '4ª',
      type: TypeAcorde.VIOLAO,
      pestana: Pestana(
        casa: Constants.PESTANA_NA_CASA_1_VIOLAO,
        tamanho: Constants.ATE_QUINTA_CORDA_DX1_VIOLAO
      ),
      posicoes: [
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_2_VIOLAO,
            text: '2'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_3_VIOLAO,
            corda: Constants.CORDA_4_VIOLAO,
            text: '3'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_3_VIOLAO,
            corda: Constants.CORDA_3_VIOLAO,
            text: '4'
        ),
      ],
      labelsSimbolsViolao: ['X', '0', 'O', 'O', 'O', 'O'],
    );

    acordes.add(a12);

    var a13 = Acorde(
      nome: 'C',
      labelsSimbolsViolao: ['X', '0', 'O', 'O', 'O', 'O'],
        type: TypeAcorde.VIOLAO,
        posicoes: [
        Posicao(
            casa: Constants.DEDO_NA_CASA_1_VIOLAO,
            corda: Constants.CORDA_2_VIOLAO,
            text: '1'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_4_VIOLAO,
            text: '2'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_3_VIOLAO,
            corda: Constants.CORDA_5_VIOLAO,
            text: '3'
        ),
      ]
    );
    acordes.add(a13);

    var a14 = Acorde(
      nome: 'C°',
      type: TypeAcorde.VIOLAO,
      pestana: Pestana(
        casa: Constants.PESTANA_NA_CASA_2_VIOLAO,
        tamanho: Constants.ATE_TERCEIRA_CORDA_DX1_VIOLAO
      ),
      posicoes: [
        Posicao(
            casa: Constants.DEDO_NA_CASA_3_VIOLAO,
            corda: Constants.CORDA_5_VIOLAO,
            text: '2'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_4_VIOLAO,
            corda: Constants.CORDA_4_VIOLAO,
            text: '3'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_4_VIOLAO,
            corda: Constants.CORDA_2_VIOLAO,
            text: '4'
        ),
      ],
      labelsSimbolsViolao: ['X', '0', 'O', 'O', 'O', 'O'],
    );
    acordes.add(a14);

    var a15 = Acorde(
      nome: 'Cm',
      type: TypeAcorde.VIOLAO,
      pestana: Pestana(
          casa: Constants.PESTANA_NA_CASA_3_VIOLAO,
          tamanho: Constants.ATE_QUINTA_CORDA_DX1_VIOLAO
      ),
      posicoes: [
        Posicao(
            casa: Constants.DEDO_NA_CASA_4_VIOLAO,
            corda: Constants.CORDA_2_VIOLAO,
            text: '2'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_5_VIOLAO,
            corda: Constants.CORDA_4_VIOLAO,
            text: '3'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_5_VIOLAO,
            corda: Constants.CORDA_3_VIOLAO,
            text: '4'
        ),
      ],
      labelsSimbolsViolao: ['X', '0', 'O', 'O', 'O', 'O'],
    );
    acordes.add(a15);

    var a16 = Acorde(
      nome: 'D#°/Eb°',
      type: TypeAcorde.VIOLAO,
      posicoes: [
        Posicao(
            casa: Constants.DEDO_NA_CASA_1_VIOLAO,
            corda: Constants.CORDA_4_VIOLAO,
            text: '1'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_1_VIOLAO,
            corda: Constants.CORDA_2_VIOLAO,
            text: '2'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_3_VIOLAO,
            text: '3'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_1_VIOLAO,
            text: '4'
        ),
      ],
      labelsSimbolsViolao: ['X', 'X', '0', 'O', 'O', 'O'],
    );
    acordes.add(a16);

    var a17 = Acorde(
      nome: 'D#/Eb',
      type: TypeAcorde.VIOLAO,
      pestana: Pestana(
          casa: Constants.PESTANA_NA_CASA_1_VIOLAO,
          tamanho: Constants.ATE_TERCEIRA_CORDA_DX1_VIOLAO
      ),
      posicoes: [
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_2_VIOLAO,
            text: '2'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_3_VIOLAO,
            corda: Constants.CORDA_4_VIOLAO,
            text: '3'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_4_VIOLAO,
            corda: Constants.CORDA_5_VIOLAO,
            text: '4'
        ),
      ],
      labelsSimbolsViolao: ['X', '0', 'O', 'O', 'O', 'O'],
    );
    acordes.add(a17);

    var a18 = Acorde(
      nome: 'D#m/Ebm',
      labelsSimbolsViolao: ['X', 'X', '0', 'O', 'O', 'O'],
        type: TypeAcorde.VIOLAO,
        posicoes: [
        Posicao(
            casa: Constants.DEDO_NA_CASA_1_VIOLAO,
            corda: Constants.CORDA_4_VIOLAO,
            text: '1'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_2_VIOLAO,
            text: '2'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_1_VIOLAO,
            text: '3'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_3_VIOLAO,
            corda: Constants.CORDA_3_VIOLAO,
            text: '4'
        ),
      ]
    );
    acordes.add(a18);

    var a19 = Acorde(
      nome: 'D',
      labelsSimbolsViolao: ['X', 'X', '0', 'O', 'O', 'O'],
      type: TypeAcorde.VIOLAO,
      posicoes: [
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_3_VIOLAO,
            text: '1'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_1_VIOLAO,
            text: '2'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_3_VIOLAO,
            corda: Constants.CORDA_2_VIOLAO,
            text: '3'
        ),
      ],

    );
    acordes.add(a19);


    var a20 = Acorde(
      nome: 'D°',
      labelsSimbolsViolao: ['X', 'X', '0', 'O', 'O', 'O'],
      type: TypeAcorde.VIOLAO,
      posicoes: [
        Posicao(
            casa: Constants.DEDO_NA_CASA_1_VIOLAO,
            corda: Constants.CORDA_3_VIOLAO,
            text: '1'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_1_VIOLAO,
            corda: Constants.CORDA_1_VIOLAO,
            text: '2'
        ),
      ],

    );
    acordes.add(a20);

    var a21 = Acorde(
      nome: 'E',
      labelsSimbolsViolao: ['0', 'O', 'O', 'O', 'O', 'O'],
      type: TypeAcorde.VIOLAO,
      posicoes: [
        Posicao(
            casa: Constants.DEDO_NA_CASA_1_VIOLAO,
            corda: Constants.CORDA_3_VIOLAO,
            text: '1'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_5_VIOLAO,
            text: '2'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_4_VIOLAO,
            text: '3'
        ),
      ],

    );
    acordes.add(a21);

    var a22 = Acorde(
      nome: 'E°',
      labelsSimbolsViolao: ['X', 'X', '0', 'O', 'O', 'O'],
      type: TypeAcorde.VIOLAO,
      posicoes: [
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_4_VIOLAO,
            text: '1'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_2_VIOLAO,
            text: '2'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_3_VIOLAO,
            corda: Constants.CORDA_3_VIOLAO,
            text: '3'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_3_VIOLAO,
            corda: Constants.CORDA_1_VIOLAO,
            text: '4'
        ),
      ],

    );
    acordes.add(a22);

    var a23 = Acorde(
      nome: 'Em',
      labelsSimbolsViolao: ['0', 'O', 'O', 'O', 'O', 'O'],
        type: TypeAcorde.VIOLAO,
        posicoes: [
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_5_VIOLAO,
            text: '2'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_4_VIOLAO,
            text: '3'
        ),
      ]
    );
    acordes.add(a23);

    var a24 = Acorde(
      nome: 'F#/Gb',
      labelsSimbolsViolao: ['0', 'O', 'O', 'O', 'O', 'O'],
        type: TypeAcorde.VIOLAO,
        pestana: Pestana(
        casa: Constants.PESTANA_NA_CASA_2_VIOLAO,
        tamanho: Constants.ATE_SEXTA_CORDA_DX1_VIOLAO
      ),
      posicoes: [
        Posicao(
            casa: Constants.DEDO_NA_CASA_3_VIOLAO,
            corda: Constants.CORDA_3_VIOLAO,
            text: '2'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_4_VIOLAO,
            corda: Constants.CORDA_5_VIOLAO,
            text: '3'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_4_VIOLAO,
            corda: Constants.CORDA_4_VIOLAO,
            text: '4'
        ),
      ]
    );
    acordes.add(a24);

    var a25 = Acorde(
      nome: 'F#°/Gb°',
      labelsSimbolsViolao: ['0', 'X', 'O', 'O', 'O', 'X'],
        type: TypeAcorde.VIOLAO,
        posicoes: [
        Posicao(
            casa: Constants.DEDO_NA_CASA_1_VIOLAO,
            corda: Constants.CORDA_4_VIOLAO,
            text: '1'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_1_VIOLAO,
            corda: Constants.CORDA_2_VIOLAO,
            text: '2'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_6_VIOLAO,
            text: '3'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_3_VIOLAO,
            text: '4'
        ),
      ]
    );
    acordes.add(a25);

    var a26 = Acorde(
        nome: 'F#m/Gbm',
        labelsSimbolsViolao: ['0', 'O', 'O', 'O', 'O', 'O'],
        type: TypeAcorde.VIOLAO,
        pestana: Pestana(
            casa: Constants.PESTANA_NA_CASA_2_VIOLAO,
            tamanho: Constants.ATE_SEXTA_CORDA_DX1_VIOLAO
        ),
        posicoes: [

          Posicao(
              casa: Constants.DEDO_NA_CASA_4_VIOLAO,
              corda: Constants.CORDA_5_VIOLAO,
              text: '3'
          ),
          Posicao(
              casa: Constants.DEDO_NA_CASA_4_VIOLAO,
              corda: Constants.CORDA_4_VIOLAO,
              text: '4'
          ),
        ]
    );
    acordes.add(a26);

    var a27 = Acorde(
      nome: 'F',
      labelsSimbolsViolao: ['0','O', 'O', 'O', 'O', 'O'],
        type: TypeAcorde.VIOLAO,
        pestana: Pestana(
        casa: Constants.PESTANA_NA_CASA_1_VIOLAO,
        tamanho: Constants.ATE_SEXTA_CORDA_DX1_VIOLAO
      ),
      posicoes: [
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_3_VIOLAO,
            text: '2'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_3_VIOLAO,
            corda: Constants.CORDA_5_VIOLAO,
            text: '3'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_3_VIOLAO,
            corda: Constants.CORDA_4_VIOLAO,
            text: '4'
        ),
      ]
    );
    acordes.add(a27);

    var a28 = Acorde(
    nome: 'F°',
    labelsSimbolsViolao: ['0','X', 'O', 'O', 'O', 'X'],
        type: TypeAcorde.VIOLAO,
        posicoes: [
      Posicao(
          casa: Constants.DEDO_NA_CASA_1_VIOLAO,
          corda: Constants.CORDA_6_VIOLAO,
          text: '1'
      ),
      Posicao(
          casa: Constants.DEDO_NA_CASA_1_VIOLAO,
          corda: Constants.CORDA_3_VIOLAO,
          text: '3'
      )
    ]
    );

    acordes.add(a28);


    var a29 = Acorde(
        nome: 'Fm',
        labelsSimbolsViolao: ['0','O', 'O', 'O', 'O', 'O'],
        type: TypeAcorde.VIOLAO,
        pestana: Pestana(
            casa: Constants.PESTANA_NA_CASA_1_VIOLAO,
            tamanho: Constants.ATE_SEXTA_CORDA_DX1_VIOLAO
        ),
        posicoes: [
          Posicao(
              casa: Constants.DEDO_NA_CASA_3_VIOLAO,
              corda: Constants.CORDA_5_VIOLAO,
              text: '3'
          ),
          Posicao(
              casa: Constants.DEDO_NA_CASA_3_VIOLAO,
              corda: Constants.CORDA_4_VIOLAO,
              text: '4'
          ),
        ]
    );
    acordes.add(a29);

    var a30 = Acorde(
      nome: 'G#/Ab',
        labelsSimbolsViolao: ['0','O', 'O', 'O', 'O', 'O'],
        type: TypeAcorde.VIOLAO,
        pestana: Pestana(
        casa: Constants.PESTANA_NA_CASA_1_VIOLAO,
        tamanho: Constants.ATE_QUARTA_CORDA_DX1_VIOLAO
      ),
      posicoes: [
        Posicao(
            casa: Constants.DEDO_NA_CASA_3_VIOLAO,
            corda: Constants.CORDA_5_VIOLAO,
            text: '2'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_4_VIOLAO,
            corda: Constants.CORDA_6_VIOLAO,
            text: '3'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_4_VIOLAO,
            corda: Constants.CORDA_1_VIOLAO,
            text: '4'
        ),
      ]
    );
    acordes.add(a30);

    var a31 = Acorde(
      nome: 'G#°/Ab°',
      labelsSimbolsViolao: ['0','X', 'O', 'O', 'O', 'X'],
        type: TypeAcorde.VIOLAO,
        posicoes: [
          Posicao(
              casa: Constants.DEDO_NA_CASA_4_VIOLAO,
              corda: Constants.CORDA_4_VIOLAO,
              text: '1'
          ),
          Posicao(
              casa: Constants.DEDO_NA_CASA_4_VIOLAO,
              corda: Constants.CORDA_2_VIOLAO,
              text: '2'
          ),
          Posicao(
              casa: Constants.DEDO_NA_CASA_5_VIOLAO,
              corda: Constants.CORDA_6_VIOLAO,
              text: '3'
          ),
          Posicao(
              casa: Constants.DEDO_NA_CASA_5_VIOLAO,
              corda: Constants.CORDA_3_VIOLAO,
              text: '4'
          ),
        ]
    );
    acordes.add(a31);

    var a32 = Acorde(
        nome: 'G#m/Abm',
        labelsSimbolsViolao: ['0','O', 'O', 'O', 'O', 'O'],
        textNumeroCasa: '4ª',
        type: TypeAcorde.VIOLAO,
        pestana: Pestana(
            casa: Constants.PESTANA_NA_CASA_1_VIOLAO,
            tamanho: Constants.ATE_SEXTA_CORDA_DX1_VIOLAO
        ),
        posicoes: [
          Posicao(
              casa: Constants.DEDO_NA_CASA_3_VIOLAO,
              corda: Constants.CORDA_5_VIOLAO,
              text: '3'
          ),
          Posicao(
              casa: Constants.DEDO_NA_CASA_3_VIOLAO,
              corda: Constants.CORDA_4_VIOLAO,
              text: '4'
          ),
        ]
    );
    acordes.add(a32);

    var a33 = Acorde(
       nome: 'G',
       labelsSimbolsViolao: ['0', 'O', 'O', 'O', 'O', 'O'],
      type: TypeAcorde.VIOLAO,
      posicoes: [
         Posicao(
             casa: Constants.DEDO_NA_CASA_2_VIOLAO,
             corda: Constants.CORDA_5_VIOLAO,
             text: '1'
         ),
         Posicao(
             casa: Constants.DEDO_NA_CASA_3_VIOLAO,
             corda: Constants.CORDA_6_VIOLAO,
             text: '2'
         ),
         Posicao(
             casa: Constants.DEDO_NA_CASA_3_VIOLAO,
             corda: Constants.CORDA_2_VIOLAO,
             text: '3'
         ),
         Posicao(
             casa: Constants.DEDO_NA_CASA_3_VIOLAO,
             corda: Constants.CORDA_1_VIOLAO,
             text: '4'
         ),
       ],

    );
    acordes.add(a33);

    var a34 = Acorde(
      nome: 'G°',
      labelsSimbolsViolao: ['0', 'X', 'O', 'O', 'O', 'X'],
        type: TypeAcorde.VIOLAO,
        posicoes: [
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_4_VIOLAO,
            text: '1'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_2_VIOLAO,
            text: '2'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_3_VIOLAO,
            corda: Constants.CORDA_6_VIOLAO,
            text: '3'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_3_VIOLAO,
            corda: Constants.CORDA_3_VIOLAO,
            text: '4'
        ),
      ]
    );
    acordes.add(a34);

    var a35 = Acorde(
        nome: 'Gm',
        labelsSimbolsViolao: ['0','O', 'O', 'O', 'O', 'O'],
        type: TypeAcorde.VIOLAO,
        pestana: Pestana(
            casa: Constants.PESTANA_NA_CASA_3_VIOLAO,
            tamanho: Constants.ATE_SEXTA_CORDA_DX1_VIOLAO
        ),
        posicoes: [
          Posicao(
              casa: Constants.DEDO_NA_CASA_5_VIOLAO,
              corda: Constants.CORDA_5_VIOLAO,
              text: '3'
          ),
          Posicao(
              casa: Constants.DEDO_NA_CASA_5_VIOLAO,
              corda: Constants.CORDA_4_VIOLAO,
              text: '4'
          ),
        ]
    );
    acordes.add(a35);

    var a36 = Acorde(
      nome: 'Dm',
      labelsSimbolsViolao: ['X', 'X', '0', 'O', 'O', 'O'],
        type: TypeAcorde.VIOLAO,
        posicoes: [
        Posicao(
            casa: Constants.DEDO_NA_CASA_1_VIOLAO,
            corda: Constants.CORDA_1_VIOLAO,
            text: '1'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_2_VIOLAO,
            corda: Constants.CORDA_3_VIOLAO,
            text: '2'
        ),
        Posicao(
            casa: Constants.DEDO_NA_CASA_3_VIOLAO,
            corda: Constants.CORDA_2_VIOLAO,
            text: '3'
        ),
      ]
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