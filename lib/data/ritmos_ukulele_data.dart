
import 'package:flutter/material.dart';
import 'package:ritmos_de_violao_premium/data/data_acordes_ukulele.dart';
import '../models/categoria.dart';
import '../models/division.dart';
import '../models/musica.dart';
import '../models/ritmo.dart';
import '../models/arrow.dart';
import '../styles/app_colors.dart';


class RitmosUkuleleleData {
  static Ritmo getRitmoForId(String id) {
    var lista = getAllRitmos();
    return lista.firstWhere((element) => element.videoId == id, orElse: null);
  }

  static List<Ritmo> getAllRitmos() {
    List<Ritmo> ritmos = [];
    var mv1 = Ritmo(
      feitoPor: 'Marcel Viana',
      timesShowAcordeInVideoInSeconds: [],
      acordesToShowSobreVideoOrderTime: [],
      arrows: [
        Arrow.down(),
        Arrow.up(),
        Arrow.down(),
        Arrow.up(),
        Arrow.down()
      ],
      divisionsRitmo: [
        Division.down(textPasso: ''),
        Division.up(textPasso: ''),
        Division.down(textPasso: ''),
        Division.up(textPasso: ''),
        Division.down(textPasso: ''),
      ],
      categorias: [
        Categoria(
            nome: 'Guarânia',
            borderColor: Colors.black,
            backgroundColor: guaraniaColor)
      ], colorRitmo: Colors.green, musicas: [
      Musica(nome: 'Pra Não Dizer Que Não Falei Das Flores', autor: 'Geraldo Vandre'),
      Musica(nome: 'Tocando em frente', autor: 'Almir Sater'),
      Musica(nome: 'Boate Azul', autor: 'Bruno & Marrone'),
    ], videoId: '5_kvS4hN8Qo', apelido: 'Guarânia Simples',

    );
    ritmos.add(mv1);

    var mv2 = Ritmo(
        colorRitmo: Colors.green,
        apelido: 'Reggae',
        arrows: [
          Arrow.down(mascada: true),
          Arrow.down(),
          Arrow.up()
        ],
        divisionsRitmo: [
          Division.down(arrowOneMascada: true, textPasso: ''),
          Division.downAndUp(textPasso: '')
        ],
        musicas: [
          Musica(
              nome: 'Me namora',
              autor: 'Natiruts'
          ),
          Musica(
              nome: 'Hey Pai',
              autor: 'Isadora Pompeo'
          ),
          Musica(
              nome: 'Jackie Tequila',
              autor: 'Skank'
          ),
        ],
        categorias: [
          Categoria(nome: 'Reggae',
              backgroundColor: reggaeColor)
        ],
        timesShowAcordeInVideoInSeconds: [],
        acordesToShowSobreVideoOrderTime: [],
        videoId: '-1iCt5Kzb0c',
        feitoPor: 'Marcel Viana');
    ritmos.add(mv2);

    var mv3 = Ritmo(
        colorRitmo: Colors.green,
        apelido: 'Pop Rock',
        arrows: [
          Arrow.down(),
          Arrow.down(),
          Arrow.up(),
          Arrow.up(),
          Arrow.down(),
          Arrow.up()
        ],
        divisionsRitmo: [
          Division.downAndDown(textPasso: ''),
          Division.upAndUp(textPasso: ''),
          Division.downAndUp(textPasso: ''),
        ],
        musicas: [
          Musica(
              nome: 'Tempo perdido',
              autor: 'Legião Urbana'
          ),
          Musica(
              nome: 'A tal canção pra lua',
              autor: 'Vitor Kley, Samuel Rosa'
          ),
          Musica(
              nome: 'Meu erro',
              autor: 'Paralamas do Sucesso'
          ),
        ],
        categorias: [
          Categoria(
              nome: 'Pop Rock',
              backgroundColor: popRockColor)
        ],
        timesShowAcordeInVideoInSeconds: [],
        acordesToShowSobreVideoOrderTime: [],
        videoId: 'bjYQjHC9VCo',
        feitoPor: 'Marcel Viana');
    ritmos.add(mv3);

    var mv4 = Ritmo(
        colorRitmo: Colors.green,
        apelido: 'Balada / Pop Rock',
        arrows: [
          Arrow.down(),
          Arrow.down(),
          Arrow.up(),
          Arrow.up(),
          Arrow.down(),
          Arrow.up()
        ],
        divisionsRitmo: [
          Division.downAndUp(textPasso: ''),
          Division.upAndDown(textPasso: ''),
          Division.upAndUp(textPasso: ''),
          Division.downAndUp(textPasso: ''),
          Division.downAndUp(textPasso: '')
        ],
        musicas: [
          Musica(nome: 'Só hoje', autor: 'Jota Quest'),
          Musica(nome: 'Primeiros erros', autor: 'Capital inicial'),
          Musica(nome: 'Por onde andei', autor: 'Nando Reis'),
        ],
        categorias: [
          Categoria(
              nome: 'Balada',
              backgroundColor: baladaColor),
          Categoria(
              nome: 'Pop rock',
              backgroundColor: popRockColor),
        ],
        timesShowAcordeInVideoInSeconds: [],
        acordesToShowSobreVideoOrderTime: [],
        videoId: 'NwiSBTMJi3U',
        feitoPor: 'Marcel Viana');
    ritmos.add(mv4);

    var mv5 = Ritmo(
        colorRitmo: Colors.green,
        apelido: 'Balada',
        arrows: [
          Arrow.down(),
          Arrow.up(),
          Arrow.up(),
          Arrow.down(),
          Arrow.up(),
          Arrow.up(),
          Arrow.down(),
          Arrow.up(),
          Arrow.down(),
          Arrow.up(),
        ],
        divisionsRitmo: [
          Division.downAndUp(textPasso: ''),
          Division.upAndDown(textPasso: ''),
          Division.upAndUp(textPasso: ''),
          Division.downAndUp(textPasso: ''),
          Division.downAndUp(textPasso: '')
        ],
        musicas: [
          Musica(nome: 'All star', autor: 'Nando Reis'),
          Musica(nome: 'Trevo', autor: 'Ana vitória'),
          Musica(nome: 'Trem bala', autor: 'Ana vilela'),
        ],
        categorias: [
          Categoria(
              nome: 'MPB',
              backgroundColor: mpbColor),
          Categoria(
              nome: 'Balada',
              backgroundColor: baladaColor),
          Categoria(
              nome: 'Pop rock',
              backgroundColor: popRockColor),
        ],
        timesShowAcordeInVideoInSeconds: [],
        acordesToShowSobreVideoOrderTime: [],
        videoId: 's5B2tr3GCFo',
        feitoPor: 'Marcel Viana');
    ritmos.add(mv5);

    var mv6 = Ritmo(
      feitoPor: 'Marcel Viana',
      videoId: 'dOdyO1dPt64',
      acordesToShowSobreVideoOrderTime: [],
      timesShowAcordeInVideoInSeconds: [],
      musicas: [
        Musica(nome: 'Anunciação', autor: 'Alceu Valença'),
        Musica(nome: 'Asa branca', autor: 'Luiz Gonzaga'),
        Musica(nome: 'La Belle de Jour', autor: 'Alceu Valença')
      ],
      divisionsRitmo: [
        Division.down(textPasso: ''),
        Division.upAndUp(textPasso: '')
      ],
      apelido: 'Baião',
      colorRitmo: Colors.green,
      arrows: [
        Arrow.down(),
        Arrow.up(),
        Arrow.up()
      ],
      categorias: [
        Categoria(nome: 'Baião', backgroundColor: baiaoColor)
      ],
    );
    ritmos.add(mv6);

    var mv7 = Ritmo(
      feitoPor: 'Marcel Viana',
      videoId: 'xOlzBvB7Hpg',
      acordesToShowSobreVideoOrderTime: [],
      timesShowAcordeInVideoInSeconds: [],
      musicas: [
        Musica(nome: 'Xote dos milagres', autor: 'Falamansa'),
        Musica(nome: 'Colo de menina', autor: 'Rastapé'),
        Musica(nome: 'Xote da alegria', autor: 'Falamansa')
      ],
      divisionsRitmo: [
        Division.downAndUp(textPasso: ''),
        Division.downAndUp(textPasso: ''),
      ],
      apelido: 'Xote',
      colorRitmo: Colors.green,
      arrows: [
        Arrow.down(),
        Arrow.up(),
        Arrow.down(),
        Arrow.up()
      ],
      categorias: [
        Categoria(nome: 'Xote', backgroundColor: xoteColor)
      ],
    );
    ritmos.add(mv7);

    var mv8 = Ritmo(
      feitoPor: 'Marcel Viana',
      videoId: 'C7hDbKCW-Io',
      acordesToShowSobreVideoOrderTime: [],
      timesShowAcordeInVideoInSeconds: [],
      musicas: [
        Musica(nome: 'Onde Você Mora?', autor: 'Cidade Negra'),
        Musica(nome: 'Desenho de Deus', autor: 'Armandinho'),
        Musica(nome: 'It This Love', autor: 'Bob Marley')
      ],
      divisionsRitmo: [
        Division.downAndUp(arrowOneMascada: true, arrowTwoMascada: true, textPasso: ''),
        Division.downAndUp(arrowTwoMascada: true, textPasso: ''),
      ],
      apelido: 'Reggae',
      colorRitmo: Colors.green,
      arrows: [
        Arrow.down(mascada: true),
        Arrow.up(mascada: true),
        Arrow.down(),
        Arrow.up(mascada: true)
      ],
      categorias: [
        Categoria(nome: 'Reggae', backgroundColor: reggaeColor)
      ],
    );
    ritmos.add(mv8);

    var mv9 = Ritmo(
      feitoPor: 'Marcel Viana',
      videoId: 'W4I4fk_UWCI',
      acordesToShowSobreVideoOrderTime: [],
      timesShowAcordeInVideoInSeconds: [],
      musicas: [
        Musica(nome: 'Até o Fim ', autor: 'Engenheiros do Hawaii'),
        Musica(nome: 'Malandragem', autor: 'Cassia Eller')
      ],
      divisionsRitmo: [
        Division.downAndDown(arrowTwoMascada: true, textPasso: ''),
        Division.upAndUp(textPasso: ''),
        Division.downAndUp(arrowOneMascada: true, textPasso: '')
      ],
      apelido: 'Pop Rock Percussivo',
      colorRitmo: Colors.green,
      arrows: [
        Arrow.down(),
        Arrow.down(mascada: true),
        Arrow.up(),
        Arrow.up(),
        Arrow.down(mascada: true),
        Arrow.up()
      ],
      categorias: [
        Categoria(nome: 'Pop rock percussivo', backgroundColor: popRockPercussivo)
      ],
    );
    ritmos.add(mv9);

    var mv10 = Ritmo(
      feitoPor: 'Marcel Viana',
      videoId: 'JiBnQpaiUTM',
      acordesToShowSobreVideoOrderTime: [],
      timesShowAcordeInVideoInSeconds: [],
      musicas: [
        Musica(nome: 'Fio de Cabelo', autor: 'Chitãozinho e Xororó'),
        Musica(nome: 'Ainda ontem chorei de saudade', autor: 'João Mineiro e Marciano'),
        Musica(nome: 'Chalana', autor: 'Almir Sater')
      ],
      divisionsRitmo: [
        Division.down(textPasso: ''),
        Division.down(textPasso: ''),
        Division.down(textPasso: ''),
        Division.up(textPasso: ''),
        Division.down(textPasso: '')
      ],
      apelido: 'Guarânia Raiz',
      colorRitmo: Colors.green,
      arrows: [
        Arrow.down(),
        Arrow.down(),
        Arrow.down(),
        Arrow.up(),
        Arrow.down()
      ],
      categorias: [
        Categoria(nome: 'Guarânia Raiz', backgroundColor: guaraniaRaiz)
      ],
    );
    ritmos.add(mv10);

    var mv11 = Ritmo(
      feitoPor: 'Marcel Viana',
      videoId: 'F4cDrhuV5q8',
      acordesToShowSobreVideoOrderTime: [],
      timesShowAcordeInVideoInSeconds: [],
      musicas: [
        Musica(nome: 'Jogo de sedução', autor: 'Exaltasamba'),
        Musica(nome: 'Ao foi que o barraco desabou', autor: 'Jorge aragão'),
        Musica(nome: 'Deixa a vida me levar', autor: 'Zéca pagodinho')
      ],
      divisionsRitmo: [
        Division.downAndUp(textPasso: ''),
        Division.upAndDown(textPasso: ''),
        Division.up(textPasso: '')
      ],
      apelido: 'Samba Simplificado',
      colorRitmo: Colors.green,
      arrows: [
        Arrow.down(),
        Arrow.up(),
        Arrow.up(),
        Arrow.down(),
        Arrow.up()
      ],
      categorias: [
        Categoria(nome: 'Samba simplificado', backgroundColor: sambaSimplficadoColor)
      ],
    );
    ritmos.add(mv11);

    var mv12 = Ritmo(
      feitoPor: 'Marcel Viana',
      videoId: 'LsNATCZtKl8',
      acordesToShowSobreVideoOrderTime: [],
      timesShowAcordeInVideoInSeconds: [],
      musicas: [
        Musica(nome: 'Garota de Ipanema', autor: 'Tom Jobim'),
        Musica(nome: 'Wave', autor: 'Tom Jobim'),
        Musica(nome: 'Chega de saudade', autor: 'João Gilberto'),

      ],
      divisionsRitmo: [
        Division.down(textPasso: ''),
        Division.upAndDown(textPasso: ''),
        Division.downAndUp(textPasso: ''),
        Division.down(textPasso: '')
      ],
      apelido: 'Bossa Nova Simplificada',
      colorRitmo: Colors.green,
      arrows: [
        Arrow.down(),
        Arrow.up(),
        Arrow.down(),
        Arrow.down(),
        Arrow.up(),
        Arrow.down()
      ],
      categorias: [
        Categoria(nome: 'Bossa nova', backgroundColor: bossaNova)
      ],
    );
    ritmos.add(mv12);

    var mv13 = Ritmo(
      feitoPor: 'Marcel Viana',
      videoId: 'AM0nmJYk_0Q',
      acordesToShowSobreVideoOrderTime: [],
      timesShowAcordeInVideoInSeconds: [],
      musicas: [
        Musica(nome: 'Mulher de fases', autor: 'Raimundos'),
        Musica(nome: 'Irreversivel', autor: 'CPM22'),
        Musica(nome: 'Além de mim', autor: 'NX0')
      ],
      divisionsRitmo: [
        Division.down(textPasso: ''),
        Division.down(textPasso: ''),
        Division.downAndUp(textPasso: ''),
        Division.downAndUp(textPasso: '')
      ],
      apelido: 'Punk/Hard Core',
      colorRitmo: Colors.green,
      arrows: [
        Arrow.down(),
        Arrow.down(),
        Arrow.down(),
        Arrow.up(),
        Arrow.down(),
        Arrow.up()
      ],
      categorias: [
        Categoria(nome: 'Punk/Hard Core', backgroundColor: punkHardCore)
      ],
    );
    ritmos.add(mv13);

    var mv14 = Ritmo(
      feitoPor: 'Marcel Viana',
      videoId: 'A2_pgdzO980',
      acordesToShowSobreVideoOrderTime: [],
      timesShowAcordeInVideoInSeconds: [],
      musicas: [
        Musica(nome: 'Naquela mesa', autor: 'Nelson Gonçalves'),
        Musica(nome: 'O Mundo é um moinho', autor: 'Cartola'),
        Musica(nome: 'As rosas não falam', autor: 'Cartola'),

      ],
      colorRitmo: Colors.green,
      divisionsRitmo: [
        Division.downAndUp(textPasso: ''),
        Division.downAndDown(textPasso: '')
      ],
      apelido: 'Samba canção',
      arrows: [
        Arrow.down(),
        Arrow.up(),
        Arrow.down(),
        Arrow.down(),
      ],
      categorias: [
        Categoria(nome: 'Samba canção', backgroundColor: sambaColor),
        Categoria(nome: 'Choro', backgroundColor: choro)
      ],
    );
    ritmos.add(mv14);

    return ritmos;
  }
}