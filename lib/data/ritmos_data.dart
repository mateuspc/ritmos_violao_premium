import 'package:flutter/material.dart';
import 'package:ritmos_de_violao_premium/data/data_acordes_ukulele.dart';
import 'package:ritmos_de_violao_premium/data/ritmos_ukulele_data.dart';
import 'package:ritmos_de_violao_premium/styles/app_colors.dart';
import '../models/categoria.dart';
import '../models/division.dart';
import '../models/musica.dart';
import '../models/ritmo.dart';
import '../models/arrow.dart';


class RitmosData {
  static Ritmo getRitmoForId(String id) {
    var lista = getAllRitmos();
    return lista.firstWhere((element) => element.videoId == id, orElse: null);
  }

  static List<Ritmo> getAllRitmos() {
    List<Ritmo> ritmos = [];

    var r1 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
        ],
        timesShowAcordeInVideoInSeconds: [4, 31, 36, 40, 45, 48, 52, 57, 59, 61],
        arrows: [
          Arrow.down(),
          Arrow.up(),
          Arrow.down(mascada: true),
        ],
        divisionsRitmo: [
          Division.downAndUp(textPasso: '1'),
          Division.down(textPasso: '2', arrowOneMascada: true),
        ],
        categorias: [
          Categoria(
              nome: 'Reggae',
              backgroundColor: reggaeColor,
              borderColor: Colors.black,
              textColor: Colors.white),
          Categoria(
              nome: 'Forró',
              backgroundColor: forroColor,
              borderColor: Colors.black,
              textColor: Colors.white),
        ],
        colorRitmo: Colors.green,
        acordesUtilizadosGravacao: 'C - G - Am - F - G - C',
        prioridade: 1,
        apelido: 'Reggae',
        pathAudio: 'ritmo1.m4a',
        videoId: 'FMwBhgp8xy8',
        videoViolaoId: 'O3Z3WsUAxSk',
        musicas: [
          Musica(nome: 'Meu abrigo', autor: 'Melim'),
          Musica(nome: 'Better Together', autor: 'Jack Johnson'),
          Musica(nome: 'Do lado de cá', autor: 'Chimarruts'),
          Musica(nome: 'Quero ser feliz também', autor: 'Natiruts'),
        ], feitoPor: 'Thayna brito');
    ritmos.add(r1);
    var r2 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),

          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),

          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),

        ],
        timesShowAcordeInVideoInSeconds: [1, 4, 8, 11, 15, 19, 22, 25, 29, 36, 40, 44, 48, 52, 57, 59, 62, 65, 68, 71, 73, 76, 79],
        arrows: [
          Arrow.down(),
          Arrow.down(),
          Arrow.up(),
          Arrow.up(),
          Arrow.down(),
          Arrow.down(),
          Arrow.up()
        ],
        divisionsRitmo: [
          Division.downAndDown(textPasso: '1'),
          Division.up(textPasso: '2'),
          Division.upAndDown(textPasso: '3'),
          Division.downAndUp(textPasso: '4')
        ],
        categorias: [
          Categoria(
              backgroundColor: popRockColor,
              nome: 'Pop rock',
              textColor: Colors.white,
              borderColor: Colors.black)
        ],
        acordesUtilizadosGravacao: 'G - D - Em - C - D - G',
        colorRitmo: Colors.deepPurple,
        apelido: 'Pop Rock',
        prioridade: 1,
        pathAudio: 'ritmo17.m4a',
        videoViolaoId: 'htAup1uiYow',
        videoId: 'EXsxmNOAD68',
        musicas: [
          Musica(nome: 'Segundo o sol', autor: 'Cássia Eller'),
          Musica(nome: 'Sutilmente', autor: 'Skank'),
          Musica(nome: 'Por onde Andei', autor: 'Nando Reis'),
          Musica(nome: 'Temporal de amor', autor: 'Cesar Menote e Fabiano'),
          Musica(nome: 'Sua maneira', autor: 'Capital Inicial',),
          Musica(nome: 'Dias melhores', autor: 'Jota Quest'),
          Musica(nome: "Don\'t let me down ", autor: 'The Beatles'),
          Musica(nome: "Página de amigos", autor: 'Cesar Menote e Fabiano'),
        ], feitoPor: 'Thayna Brito');
    ritmos.add(r2);

    var r3 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
        ],
        timesShowAcordeInVideoInSeconds: [5, 14, 21, 26, 30, 34, 37],
        arrows: [
          Arrow.down(),
          Arrow.up(),
          Arrow.up(),
        ],
        divisionsRitmo: [
          Division.down(textPasso: '1'),
          Division.upAndUp(textPasso: '2'),
        ],
        categorias: [
          Categoria(
              backgroundColor: valsaColor,
              nome: 'Valsa',
              textColor: Colors.white,
              borderColor: Colors.black)
        ],
        acordesUtilizadosGravacao: 'C',
        colorRitmo: Colors.deepPurple,
        apelido: 'Valsa',
        prioridade: 1,
        pathAudio: 'ritmo3.m4a',
        videoId: 'mui6G5vUDqs',
        videoViolaoId: 'mOGG9tJ4lJ8',
        musicas: [
          Musica(nome: 'Sangue Vienense', autor: 'Jothann Strauss'),
          Musica(
              nome: 'Abençoa senhor as familias amém', autor: 'Padre Zezinho'),
        ], feitoPor: 'Thayna Brito');
    ritmos.add(r3);
    var r4 = Ritmo(
        acordesToShowSobreVideoOrderTime: [],
        timesShowAcordeInVideoInSeconds: [],
        arrows: [
          Arrow.down(),
          Arrow.down(),
          Arrow.down(),
        ],
        divisionsRitmo: [
          Division.down(textPasso: '1'),
          Division.down(textPasso: '2'),
          Division.down(textPasso: '3'),
        ],
        categorias: [
          Categoria(
              backgroundColor: corBaiao,
              nome: 'Baião',
              textColor: Colors.white,
              borderColor: Colors.black),

        ],
        acordesUtilizadosGravacao: '',
        colorRitmo: Colors.deepPurple,
        apelido: 'Baião',
        prioridade: 1,
        pathAudio: 'ritmo37.m4a',
        videoId: 'Vp-z6Wmt7xg',
        musicas: [
          Musica(nome: 'Asa Branca', autor: 'Luiz Gonzaga'),
        ], videoViolaoId: '', feitoPor: 'Thayna Brito');
    ritmos.add(r4);

    var r5 = Ritmo(
        acordesToShowSobreVideoOrderTime: [],
        timesShowAcordeInVideoInSeconds: [],
        arrows: [
          Arrow.down(),
          Arrow.down(),
          Arrow.down(),
          Arrow.down(),
          Arrow.down(),
        ],
        divisionsRitmo: [
          Division.down(textPasso: '1'),
          Division.down(textPasso: '2'),
          Division.down(textPasso: '3'),
          Division.down(textPasso: '4'),
          Division.down(textPasso: '5'),
        ],
        categorias: [
          Categoria(
              backgroundColor: sertanejoColor,
              nome: 'Sertanejo',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: guaraniaColor,
              nome: 'Guarania',
              textColor: Colors.white,
              borderColor: Colors.black),
        ],
        acordesUtilizadosGravacao: '',
        colorRitmo: Colors.deepPurple,
        apelido: 'Guarania',
        prioridade: 1,
        pathAudio: 'ritmo36.m4a',
        videoId: 'FJbCBtnlYhM',
        musicas: [
          Musica(nome: 'Índia', autor: 'Cascatinha e Inhana'),
          Musica(nome: 'Cama Fria', autor: 'André e Andrade'),
          Musica(nome: 'Lembrança de um Boiadeiro', autor: 'Trio Parada Dura'),
          Musica(nome: 'Tocando em Frente', autor: 'Almir Sater'),
          Musica(nome: 'Saudade da minha terra', autor: 'Chitãozinho e Xororó'),
          Musica(nome: 'Boate Azul', autor: 'Bruno e Marrone'),
          Musica(nome: 'Ainda ontem chorei de saudade', autor: 'João Mineiro e Marciano'),
          Musica(nome: 'Cabecinha no ombro', autor: 'Almir Sater'),
          Musica(nome: 'Telefone mudo', autor: 'Trio parada dura'),
          Musica(nome: 'India', autor: 'Roberto Carlos'),
          Musica(nome: 'Meu Recanto, meu paraíso', autor: 'Goiano e Paranaense'),
          Musica(nome: 'Viola de ouro', autor: 'Tonico e Tinoco'),

        ], feitoPor: 'Thayna Brito', videoViolaoId: '');
    ritmos.add(r5);

    var r6 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
        ],
        timesShowAcordeInVideoInSeconds: [2, 40, 44, 48, 52, 56],
        arrows: [
          Arrow.down(),
          Arrow.up(),
          Arrow.down(),
          Arrow.up(),
          Arrow.down(),
        ],
        divisionsRitmo: [
          Division.down(textPasso: '1'),
          Division.upAndDown(textPasso: '2'),
          Division.upAndDown(textPasso: '3'),
        ],
        categorias: [
          Categoria(
              backgroundColor: guaraniaColor,
              nome: 'Guarania',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: sertanejoColor,
              nome: 'Sertanejo',
              textColor: Colors.white,
              borderColor: Colors.black),
        ],
        acordesUtilizadosGravacao: 'E',
        colorRitmo: Colors.deepPurple,
        apelido: 'Guarania',
        prioridade: 1,
        pathAudio: 'ritmo6.m4a',
        videoId: 'K3XQdr5w0EA',
        videoViolaoId: 'GplCUw5UcEY',
        musicas: [
          Musica(nome: 'Doente de amor', autor: 'Bruno e Marrone'),
          Musica(nome: 'Brusa vermelha', autor: 'Trio parada dura'),
          Musica(nome: 'Sem você', autor: 'Victor e léo'),
          Musica(nome: 'Fio de cabelo', autor: 'Chitãozinho e xororó'),
          Musica(nome: 'Tocando em frente', autor: 'Almir Sater'),
          Musica(nome: 'Chalana', autor: 'Almir Sater'),
          Musica(nome: 'A dama de vermelho', autor: 'Bruno e Marrone'),
          Musica(nome: 'Franguinho na panela', autor: 'Loucenço e Lourival'),
          Musica(nome: '60 dias apaixonado', autor: 'Victor e Leo'),
          Musica(nome: 'Vivendo aqui no mato', autor: 'Trio parada dura(part. Zé neto e cristiano)'),
          Musica(nome: 'Flor e beija flor', autor: 'Henrique e juliano (part. Marília Mendonça)'),
          Musica(nome: 'Canarinho Prisioneiro', autor: 'Chico Rey e Paraná'),

        ], feitoPor: 'Mateus Polonini Cardoso');
    ritmos.add(r6);

    var r7 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),

          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),

          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),

          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),

          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),

          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
        ],
        timesShowAcordeInVideoInSeconds: [2, 33, 35, 37, 40, 42, 44, 46, 48, 51, 53, 55, 58, 59, 61,
          63, 67, 70, 73, 76, 80, 83, 86, 88, 94, 98, 104, 105, 106, 109, 110, 111, 113, 114, 115, 117, 118, 120, 123, 124, 125],
        arrows: [
          Arrow.down(),
          Arrow.up(),
          Arrow.up(),
          Arrow.down(),
          Arrow.up(),
          Arrow.down(),
          Arrow.up(),
        ],
        divisionsRitmo: [
          Division.downAndUp(textPasso: '1'),
          Division.up(textPasso: '2'),
          Division.downAndUp(textPasso: '3'),
          Division.downAndUp(textPasso: '4'),
        ],
        categorias: [
          Categoria(
              backgroundColor: forroColor,
              nome: 'Forró',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: arrochaColor,
              nome: 'Arrocha',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: boleroColor,
              nome: 'Bolero',
              textColor: Colors.white,
              borderColor: Colors.black),
        ],
        acordesUtilizadosGravacao: 'G',
        colorRitmo: Colors.deepPurple,
        apelido: 'Forró',
        prioridade: 1,
        pathAudio: 'ritmo7.m4a',
        videoId: 'V8aWq0nuUMQ',
        videoViolaoId: 'NHbmB1BAsbU',
        musicas: [
          Musica(nome: 'Para dançar vaneira', autor: 'Alma Serrana'),
          Musica(nome: 'Praeiro', autor: 'Jammil e um Noteis'),
          Musica(nome: 'O carra do arrocha', autor: 'Israel Novaes'),
          Musica(nome: 'Sorte que se beija bem', autor: 'Maiara e Maraisa'),
          Musica(nome: 'Cem mil', autor: 'Gustavo Lima'),
        ], feitoPor: 'Mateus Polonini Cardoso');
    ritmos.add(r7);

    var r8 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),

          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),

        ],
        timesShowAcordeInVideoInSeconds: [5, 7, 10, 12, 14, 16, 18, 21, 23, 26, 30, 32, 34, 36, 38, 40, 47, 50, 53, 56, 59, 62, 64],
        arrows: [
          Arrow.down(),
          Arrow.down(),
          Arrow.up(),
          Arrow.down(),
          Arrow.up(),
        ],
        divisionsRitmo: [
          Division.down(textPasso: '1'),
          Division.downAndUp(textPasso: '2'),
          Division.downAndUp(textPasso: '3'),
        ],

        categorias: [
          Categoria(
              backgroundColor: sertanejoColor,
              nome: 'Setanejo',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: rockColor,
              nome: 'Rock',
              textColor: Colors.white,
              borderColor: Colors.black),
        ],
        acordesUtilizadosGravacao: 'G - D - Em - C - D - G',
        colorRitmo: Colors.deepPurple,
        apelido: 'Sertanejo',
        prioridade: 1,
        pathAudio: 'ritmo8.m4a',
        videoId: 'WAYT5IzUUyQ',
        videoViolaoId: 'gEqh-OYepp8',
        musicas: [Musica(nome: 'É o amor ', autor: 'Zezé Di Camargo e Luciano')],
        feitoPor: 'Mateus Polonini Cardoso');
    ritmos.add(r8);

    var r9 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),

          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),

          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),

        ],
        timesShowAcordeInVideoInSeconds: [2, 4, 6, 8, 11, 13, 15, 17, 19, 21, 23, 26, 30, 34, 37, 40, 44, 47, 50, 53, 57, 60, 64, 66, 68, 70, 73, 74, 77],
        arrows: [
          Arrow.down(),
          Arrow.down(),
          Arrow.down(),
          Arrow.up(),
          Arrow.down(),
          Arrow.up(),
        ],
        divisionsRitmo: [
          Division.downAndDown(textPasso: '1'),
          Division.downAndUp(textPasso: '2'),
          Division.downAndUp(textPasso: '3'),
        ],
        categorias: [
          Categoria(
              backgroundColor: sertanejoColor,
              nome: 'Sertanejo',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: rockColor,
              nome: 'Rock',
              textColor: Colors.white,
              borderColor: Colors.black),
        ],
        acordesUtilizadosGravacao: 'G - D - Em - C - G - D - Em - C - G',
        colorRitmo: Colors.deepPurple,
        apelido: 'Sertanejo',
        prioridade: 1,
        pathAudio: 'ritmo9.m4a',
        videoId: 'TlcswxXqW2w',
        videoViolaoId: 'FIIibBuAggI',
        musicas: [
          Musica(nome: 'Depois de você', autor: 'Rio negro e Solimões'),
          Musica(nome: 'Lenha', autor: 'Rio negro e Solimões')
        ], feitoPor: 'Mateus Polonini Cardoso');
    ritmos.add(r9);

    var r10 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),

          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),

        ],
        timesShowAcordeInVideoInSeconds: [3, 5, 9, 14, 18, 20, 24, 27, 32, 36, 39, 41, 44, 52, 58, 64, 67, 70],
        arrows: [
          Arrow.down(),
          Arrow.up(),
          Arrow.down(),
          Arrow.up(),
          Arrow.down(),
          Arrow.up(),
        ],
        divisionsRitmo: [
          Division.down(textPasso: '1'),
          Division.upAndDown(textPasso: '2'),
          Division.upAndDown(textPasso: '3'),
          Division.up(textPasso: '4')
        ],
        categorias: [
          Categoria(
              backgroundColor: sertanejoColor,
              nome: 'Setanejo',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: rockColor,
              nome: 'Rock',
              textColor: Colors.white,
              borderColor: Colors.black),
        ],
        acordesUtilizadosGravacao: 'G - D - Em - C - D - G',
        colorRitmo: Colors.deepPurple,
        apelido: 'Sertanejo',
        prioridade: 1,
        pathAudio: 'ritmo10.m4a',
        videoId: 'V8RYwElBVGw',
        videoViolaoId: 'mJIWW_8jtto',
        musicas: [Musica(nome: 'Viva la vida', autor: 'Coldplay')],
        feitoPor: 'Mateus Polonini Cardoso');
    ritmos.add(r10);

    var r11 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),

          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),

          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),

        ],
        timesShowAcordeInVideoInSeconds: [2, 7, 12, 17, 20, 22, 25, 31, 37, 43, 44, 47, 49, 85, 93, 98, 101, 103, 109, 113, 118, 120, 122, 127, 131, 137, 139, 141],
        arrows: [
          Arrow.down(),
          Arrow.down(),
          Arrow.up(),
          Arrow.up(),
          Arrow.down(),
          Arrow.up(),
        ],
        divisionsRitmo: [
          Division.down(textPasso: '1'),
          Division.downAndUp(textPasso: '2'),
          Division.upAndDown(textPasso: '3'),
          Division.up(textPasso: '4')
        ],
        categorias: [
          Categoria(
              backgroundColor: popRockColor,
              nome: 'Pop rock',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: sertanejoColor,
              nome: 'Setanejo',
              textColor: Colors.white,
              borderColor: Colors.black)
        ],
        acordesUtilizadosGravacao: 'G - D - Em - C - D - G',
        colorRitmo: Colors.deepPurple,
        apelido: 'Pop rock',
        prioridade: 1,
        pathAudio: 'ritmo11.m4a',
        videoId: 'qQ1I-ru3SJ4',
        videoViolaoId: 'UfUQD0R5D0g',
        musicas: [
          Musica(nome: 'Será', autor: 'Legião Urbana'),
          Musica(nome: 'Recairei', autor: 'Os Barões da Pisadinha'),
          Musica(nome: 'Ta rocheda', autor: 'Os Barões da Pisadinha'),
          Musica(nome: 'Rita', autor: 'Tierry'),
          Musica(nome: 'Investe em mim', autor: 'Jonas Esticado'),
          Musica(
              nome: 'Have you ever seen the rain',
              autor: 'Creedence Clearwater Revival'),
          Musica(
              nome: 'Sem medo de ser feliz',
              autor: 'Zezé de camargo e Luciano'),
          Musica(nome: 'Beabadoobee', autor: 'Coffee'),
          Musica(nome: 'Carla', autor: 'LS Jack'),
          Musica(nome: 'Malandragem', autor: 'Cássia Eller'),
          Musica(nome: 'Caso marcado', autor: 'Cesar Menote e Fabiano'),
          Musica(nome: 'Fada', autor: 'Victor e Léo'),
          Musica(nome: 'Amigo Apaixonado', autor: 'Victor e Léo'),
          Musica(nome: 'Luz, Paixão, Rodeio', autor: 'Victor e Léo'),
          Musica(nome: 'Como um Anjo', autor: 'Cesar Menote e Fabiano'),
          Musica(nome: 'Ta se achando', autor: 'Guilherme e Santiago'),
          Musica(nome: 'Celebridade', autor: 'Fernando e Sorocaba'),
          Musica(nome: 'Entre tapas e beijos', autor: 'Leandro e Leonardo'),
          Musica(nome: 'Sinais', autor: 'Luan Santana'),
          Musica(nome: 'Ja sei namorar', autor: 'Os Tribalhistas'),
          Musica(nome: 'Proibida pra mim', autor: 'Charlie Brown JR'),
          Musica(nome: "Me Apaixonei", autor: "Eduardo Costa")
        ], feitoPor: 'Mateus Polonini Cardoso');
    ritmos.add(r11);

    var r12 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),

          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),

        ],
        timesShowAcordeInVideoInSeconds: [3, 6, 11, 14, 17, 21, 24, 27, 31, 38, 75, 79, 83, 86, 90],
        arrows: [
          Arrow.down(),
          Arrow.down(),
          Arrow.up(),
          Arrow.up(),
          Arrow.down(),
          Arrow.up(),
          Arrow.down(),
          Arrow.up(),
          Arrow.down(),
          Arrow.up(),
        ],
        divisionsRitmo: [
          Division.downAndDown(textPasso: '1'),
          Division.upAndUp(textPasso: '2'),
          Division.downAndUp(textPasso: '3'),
          Division.downAndUp(textPasso: '4'),
          Division.downAndUp(textPasso: '5')
        ],
        categorias: [
          Categoria(
              backgroundColor: popColor,
              nome: 'Pop',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: baladaColor,
              nome: 'Balada',
              textColor: Colors.white,
              borderColor: Colors.black),
        ],
        colorRitmo: Colors.deepPurple,
        acordesUtilizadosGravacao: 'G - D - Em - C - D - G',
        apelido: 'Pop',
        prioridade: 1,
        pathAudio: 'ritmo12.m4a',
        videoId: '_2Ahn4NNVao',
        videoViolaoId: '0XO5nvY2sI8',
        musicas: [Musica(nome: 'Sinto falta de você', autor: 'Victor e Leo')],
        feitoPor: 'Mateus Polonini Cardoso');
    ritmos.add(r12);

    var r13 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(5),
          DicionarioAcordesUkulele.getListAcordes().elementAt(17),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(5),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(5),
          DicionarioAcordesUkulele.getListAcordes().elementAt(17),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(5),


          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(5),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(5),
          DicionarioAcordesUkulele.getListAcordes().elementAt(17),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(5),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(5),
          DicionarioAcordesUkulele.getListAcordes().elementAt(17),

          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(5),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),

        ],
        timesShowAcordeInVideoInSeconds: [1, 4, 9, 17, 20, 26, 32, 36, 40, 43, 45, 47, 48, 52, 54, 58, 61, 64, 71, 76, 81, 88, 94, 95],
        arrows: [
          Arrow.down(),
          Arrow.up(),
          Arrow.down(),
          Arrow.up(),
          Arrow.down(),
          Arrow.down(),
        ],
        divisionsRitmo: [
          Division.downAndUp(textPasso: '1'),
          Division.downAndUp(textPasso: '2'),
          Division.downAndDown(textPasso: '3'),
        ],
        categorias: [
          Categoria(
              backgroundColor: countryColor,
              nome: 'Country',
              textColor: Colors.white,
              borderColor: Colors.black)
        ],
        acordesUtilizadosGravacao: 'D - A - Bm - G - A - D',
        colorRitmo: Colors.deepPurple,
        apelido: 'Country I',
        prioridade: 1,
        pathAudio: 'ritmo13.m4a',
        videoId: '5xfyT1tDyZA',
        musicas: [
          Musica(nome: 'Companheiro', autor: 'Fernando e Sorocaba'),
          Musica(nome: 'Lá em casa', autor: 'Victor e Leo'),
          Musica(nome: 'Chattahoochee', autor: 'Alan Jackson'),
          Musica(nome: 'Feriado nacional', autor: 'Bruno e Marrone'),
        ], videoViolaoId: '', feitoPor: 'Mateus Polonini Cardoso');
    ritmos.add(r13);

    var r14 = Ritmo(
      acordesToShowSobreVideoOrderTime: [
        DicionarioAcordesUkulele.getListAcordes().elementAt(0),
        DicionarioAcordesUkulele.getListAcordes().elementAt(4),
        DicionarioAcordesUkulele.getListAcordes().elementAt(16),
        DicionarioAcordesUkulele.getListAcordes().elementAt(3),
        DicionarioAcordesUkulele.getListAcordes().elementAt(4),
        DicionarioAcordesUkulele.getListAcordes().elementAt(0),
        DicionarioAcordesUkulele.getListAcordes().elementAt(4),
        DicionarioAcordesUkulele.getListAcordes().elementAt(16),
        DicionarioAcordesUkulele.getListAcordes().elementAt(3),
        DicionarioAcordesUkulele.getListAcordes().elementAt(4),
        DicionarioAcordesUkulele.getListAcordes().elementAt(0),

      ],
      timesShowAcordeInVideoInSeconds: [1, 4, 8, 13, 16, 19, 38, 43, 47, 49, 51],
      arrows: [
        Arrow.up(),
        Arrow.down(),
      ],
      divisionsRitmo: [
        Division.up(textPasso: '1'),
        Division.down(textPasso: '2')
      ],
      categorias: [
        Categoria(
            backgroundColor: countryColor,
            nome: 'Country',
            textColor: Colors.white,
            borderColor: Colors.black)
      ],
      acordesUtilizadosGravacao: 'Bm - G - D - A - Bm',
      colorRitmo: Colors.deepPurple,
      apelido: 'Country II',
      prioridade: 1,
      pathAudio: 'ritmo14.m4a',
      videoId: 'IMxCeIWS6Vk',
      musicas: [
        Musica(nome: 'Parabéns para você', autor: 'Atchim e Espiro'),
        Musica(nome: 'Festa de rodeio', autor: 'Leandro e Leonardo'),
        Musica(nome: 'Feriado nacional', autor: 'Bruno e Marrone'),
        Musica(nome: 'Bate o Pé', autor: 'Rio negro e Solimões'),
        Musica(nome: 'Só alegria', autor: 'Rio negro e Solimões'),
      ], feitoPor: 'Mateus Polonini Cardoso',
      videoViolaoId: '',
    );
    ritmos.add(r14);

    var r15 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),


          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),

          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),


        ],
        timesShowAcordeInVideoInSeconds: [3, 4, 6, 8, 9, 12, 16, 19, 24, 27, 29, 33, 37, 39, 40, 41, 43, 44, 46, 47, 49, 51,
          52, 52, 55, 56,57,58, 63, 66, 68, 70],
        arrows: [
          Arrow.down(),
          Arrow.down(mascada: true),
          Arrow.up(),
          Arrow.down(mascada: true),
          Arrow.up()
        ],
        divisionsRitmo: [
          Division.down(textPasso: '1'),
          Division.downAndUp(textPasso: '2', arrowOneMascada: true),
          Division.downAndUp(textPasso: '3', arrowOneMascada: true),
        ],
        categorias: [
          Categoria(
              backgroundColor: vaneiraColor,
              nome: 'Vaneira',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: sertanejoColor,
              nome: 'Sertanejo',
              textColor: Colors.white,
              borderColor: Colors.black),
        ],
        acordesUtilizadosGravacao: 'Am - F - C - G - Am - F - C - Am',
        colorRitmo: Colors.deepPurple,
        apelido: 'Vaneira',
        prioridade: 1,
        pathAudio: 'ritmo15.m4a',
        videoId: '4nCSSFUKKJI',
        musicas: [
          Musica(nome: 'Propaganda', autor: 'Jorge e Mateus'),
          Musica(nome: 'Não fala não para mim', autor: 'Humberto e Ronaldo'),
          Musica(nome: 'Não deixo não', autor: 'Mano Walter'),
          Musica(nome: 'Ar codicionado no 15', autor: 'Wesley Safadão')
        ], feitoPor: 'Mateus Polonini Cardoso', videoViolaoId: '');
    ritmos.add(r15);

    var r16 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),

          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),


          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),

          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),

        ],
        timesShowAcordeInVideoInSeconds: [1, 4, 6, 10, 11, 14, 20, 27, 33, 40, 43, 46, 55, 58, 61, 66, 68,
          70, 73, 75, 77, 82, 85, 87, 89, 93, 94, 97, 99, 101, 104, 106, 107, 108, 112],
        arrows: [
          Arrow.down(),
          Arrow.down(mascada: true),
          Arrow.up(),
          Arrow.down(mascada: true),
          Arrow.up(),
          Arrow.down(mascada: true),
          Arrow.down()
        ],
        divisionsRitmo: [
          Division.down(textPasso: '1'),
          Division.downAndUp(textPasso: '2', arrowOneMascada: true),
          Division.downAndUp(textPasso: '3', arrowOneMascada: true),
          Division.downAndDown(textPasso: '4', arrowOneMascada: true),
        ],
        categorias: [
          Categoria(
              backgroundColor: vaneiraColor,
              nome: 'Vaneira',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: sertanejoColor,
              nome: 'Sertanejo',
              textColor: Colors.white,
              borderColor: Colors.black),
        ],
        acordesUtilizadosGravacao: 'C - G - Am - F - G - C - G - C',
        colorRitmo: Colors.deepPurple,
        apelido: 'Sertanejo',
        prioridade: 1,
        pathAudio: 'ritmo16.m4a',
        videoId: 'Q29Xj1FaHFA',
        musicas: [
          Musica(nome: 'Cobaia(Versão acústica)', autor: 'Lauana Prado')
        ], feitoPor: 'Mateus Polonini Cardoso', videoViolaoId: '');
    ritmos.add(r16);

    var r17 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),

        ],
        timesShowAcordeInVideoInSeconds: [2, 7, 12, 16, 21, 26, 28, 34, 41, 48, 51, 55, 60, 66, 72, 74, 76],
        arrows: [
          Arrow.down(),
          Arrow.down(),
          Arrow.down(),
          Arrow.up(),
          Arrow.up(),
          Arrow.up(),
          Arrow.up(),
          Arrow.down(),
          Arrow.down(),
          Arrow.up(),
        ],
        divisionsRitmo: [
          Division.downAndDown(textPasso: '1'),
          Division.downAndUp(textPasso: '2'),
          Division.upAndUp(textPasso: '3'),
          Division.upAndDown(textPasso: '4'),
          Division.downAndUp(textPasso: '5')
        ],
        categorias: [
          Categoria(
              backgroundColor: sambaColor,
              nome: 'Samba',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: pagodeColor,
              nome: 'Pagode',
              textColor: Colors.white,
              borderColor: Colors.black),
        ],
        acordesUtilizadosGravacao: 'G',
        colorRitmo: Colors.deepPurple,
        apelido: 'Samba',
        prioridade: 1,
        pathAudio: 'ritmo2.m4a',
        videoId: 'eyQWuhkBNHs',
        videoViolaoId: 'oKGHY78g7uA',
        musicas: [
          Musica(nome: 'Não deixe o samba morrer', autor: 'Maria rita'),
          Musica(nome: 'E vamos a luta', autor: 'Gonzaguinha'),
        ], feitoPor: 'Mateus Polonini Cardoso');
    ritmos.add(r17);

    var r18 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),

          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),

        ],
        timesShowAcordeInVideoInSeconds: [2, 38, 41, 45, 48, 51, 57, 60,
          63, 66, 70],
        arrows: [
          Arrow.down(),
          Arrow.up(),
          Arrow.down(mascada: true),
          Arrow.up(),
          Arrow.down(),
          Arrow.up(),
          Arrow.up(),
          Arrow.down(),
          Arrow.up(),
          Arrow.down(),
          Arrow.up(),
          Arrow.down(),
          Arrow.up(),
        ],
        divisionsRitmo: [
          Division.down(textPasso: '1'),
          Division.upAndDown(textPasso: '2', arrowTwoMascada: true),
          Division.up(textPasso: '3'),
          Division.downAndUp(textPasso: '4'),
          Division.upAndDown(textPasso: '5'),
          Division.upAndDown(textPasso: '6'),
          Division.upAndDown(textPasso: '7'),
          Division.up(textPasso: '8')
        ],
        categorias: [
          Categoria(
              backgroundColor: sertanejoColor,
              nome: 'Setanejo',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: mpbColor,
              nome: 'MPB',
              textColor: Colors.white,
              borderColor: Colors.black),
        ],
        acordesUtilizadosGravacao: 'G - Em - C - D - G',
        colorRitmo: Colors.deepPurple,
        apelido: 'Sertanejo I',
        prioridade: 1,
        pathAudio: 'ritmo18.m4a',
        videoId: '1oEWnD45hbE',
        musicas: [Musica(nome: 'Meu eu em você', autor: 'Victor e Léo')], feitoPor: 'Mateus Polonini Cardoso', videoViolaoId: '');
    ritmos.add(r18);

    var r19 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(17),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(5),
          DicionarioAcordesUkulele.getListAcordes().elementAt(17),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(5),
          DicionarioAcordesUkulele.getListAcordes().elementAt(17),

          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(5),
          DicionarioAcordesUkulele.getListAcordes().elementAt(17),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(5),
          DicionarioAcordesUkulele.getListAcordes().elementAt(17),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),

          DicionarioAcordesUkulele.getListAcordes().elementAt(5),
          DicionarioAcordesUkulele.getListAcordes().elementAt(17),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(5),
          DicionarioAcordesUkulele.getListAcordes().elementAt(17),
        ],
        timesShowAcordeInVideoInSeconds: [3, 7, 12, 16, 20, 26, 30, 32, 35,
          41, 43, 45, 47, 49, 51, 52, 55, 56, 58,
          60, 62, 64, 66, 69, 70],
        arrows: [
          Arrow.down(),
          Arrow.up(),
          Arrow.down(),
          Arrow.down(),
          Arrow.up(),
          Arrow.down(),
          Arrow.down(),
          Arrow.up(),
        ],
        divisionsRitmo: [
          Division.downAndUp(textPasso: '1'),
          Division.downAndDown(textPasso: '2'),
          Division.up(textPasso: '3'),
          Division.downAndDown(textPasso: '4'),
          Division.up(textPasso: '5')
        ],
        categorias: [
          Categoria(
              backgroundColor: arrochaColor,
              nome: 'Arrocha',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: sertanejoColor,
              nome: 'Setanejo',
              textColor: Colors.white,
              borderColor: Colors.black)
        ],
        acordesUtilizadosGravacao: 'Bm - G - D - A - Bm - G - D - A - Bm',
        colorRitmo: Colors.deepPurple,
        apelido: 'Sertanejo I',
        prioridade: 1,
        pathAudio: 'ritmo19.m4a',
        videoId: 'm5zupsk3imM',
        musicas: [
          Musica(nome: 'Camaro amarelo', autor: 'Munhoz e Mariano'),
          Musica(nome: 'Vem ni mim Dodge RAM', autor: 'Israel Novaes'),
        ], videoViolaoId: '', feitoPor: 'Mateus Polonini Cardoso');
    ritmos.add(r19);

    var r20 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(17),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(5),
          DicionarioAcordesUkulele.getListAcordes().elementAt(17),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(5),
          DicionarioAcordesUkulele.getListAcordes().elementAt(17),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),

          DicionarioAcordesUkulele.getListAcordes().elementAt(5),
          DicionarioAcordesUkulele.getListAcordes().elementAt(17),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(5),
          DicionarioAcordesUkulele.getListAcordes().elementAt(17),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(5),
          DicionarioAcordesUkulele.getListAcordes().elementAt(17),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),

          DicionarioAcordesUkulele.getListAcordes().elementAt(5),
          DicionarioAcordesUkulele.getListAcordes().elementAt(17),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(5),
          DicionarioAcordesUkulele.getListAcordes().elementAt(17)
        ],
        timesShowAcordeInVideoInSeconds: [6, 8, 31, 32, 34, 37, 38, 39, 43,
          44, 45, 48, 49, 50, 53, 54, 55, 58,
          59, 60, 77, 87, 91],
        arrows: [
          Arrow.up(),
          Arrow.down(mascada: true),
          Arrow.up(),
          Arrow.down(),
          Arrow.down(),
        ],
        divisionsRitmo: [
          Division.upAndDown(textPasso: '1', arrowTwoMascada: true),
          Division.up(textPasso: '2'),
          Division.downAndDown()
        ],
        categorias: [
          Categoria(
              backgroundColor: forroColor,
              nome: 'Forró',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: mpbColor,
              nome: 'MPB',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: sertanejoColor,
              nome: 'Setanejo',
              textColor: Colors.white,
              borderColor: Colors.black)
        ],
        acordesUtilizadosGravacao: 'Bm - G - A - Bm - G - A - Bm - G - A - Bm',
        colorRitmo: Colors.deepPurple,
        apelido: 'Forró',
        prioridade: 1,
        pathAudio: 'ritmo20.m4a',
        videoId: 'sFX9UeNf07g',
        musicas: [
          Musica(nome: 'Casado, namorando, solteiro', autor: 'Wesley Safadão'),
          Musica(nome: 'Vem cá, vem ver', autor: 'Louvores quem tocam no MAEP')
        ], videoViolaoId: '', feitoPor: 'Mateus Polonini Cardoso');
    ritmos.add(r20);

    var r21 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(15),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(19),
          DicionarioAcordesUkulele.getListAcordes().elementAt(19),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(15),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(19),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(15),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(19),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(15),

          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(19),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(15),
        ],
        timesShowAcordeInVideoInSeconds: [2, 3, 4, 8, 9, 10, 14, 16, 19, 20, 24, 26, 29, 31,
          34, 36, 38, 40],
        arrows: [
          Arrow.down(mascada: true),
          Arrow.up(),
          Arrow.down(),
          Arrow.down(),
          Arrow.down(),
          Arrow.down(),
        ],
        divisionsRitmo: [
          Division.down(textPasso: '1', arrowOneMascada: true),
          Division.upAndDown(textPasso: '2'),
          Division.downAndDown(textPasso: '3'),
          Division.down(textPasso: '4')
        ],
        categorias: [
          Categoria(
              backgroundColor: sertanejoColor,
              nome: 'POP',
              textColor: Colors.white,
              borderColor: Colors.black)
        ],
        acordesUtilizadosGravacao: 'Fm - Em - D#m - Em - Fm',
        colorRitmo: Colors.deepPurple,
        apelido: 'POP',
        prioridade: 1,
        pathAudio: 'ritmo21.m4a',
        videoId: 'c_MsctEKoc8',
        musicas: [
          Musica(nome: 'Libriana', autor: 'Crod ft. Lobo'),
        ], feitoPor: 'Mateus Polonini Cardoso', videoViolaoId: '');
    ritmos.add(r21);

    var r22 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),

          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),

          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
        ],
        timesShowAcordeInVideoInSeconds: [2, 25, 28, 31, 35, 37, 40, 43,
          46, 49, 52, 55, 58, 60, 63, 66, 69,
          78, 82, 86, 91, 95, 99, 104],
        arrows: [
          Arrow.down(),
          Arrow.up(),
          Arrow.down(),
          Arrow.up(),
          Arrow.down(),
          Arrow.up(),
        ],
        divisionsRitmo: [
          Division.down(textPasso: '1'),
          Division.upAndDown(textPasso: '2'),
          Division.up(textPasso: '3'),
          Division.downAndUp(textPasso: '4')
        ],
        categorias: [
          Categoria(
              backgroundColor: popColor,
              nome: 'POP',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: sertanejoColor,
              nome: 'Setanejo',
              textColor: Colors.white,
              borderColor: Colors.black)
        ],
        acordesUtilizadosGravacao: 'G - D - Em - G',
        colorRitmo: Colors.deepPurple,
        apelido: 'Sertanejo',
        prioridade: 1,
        pathAudio: 'ritmo22.m4a',
        videoId: 'KuOY7vR1snk',
        musicas: [
          Musica(nome: 'Banda cover', autor: 'Zé neto e Cristiano'),
        ], feitoPor: 'Mateus Polonini Cardoso', videoViolaoId: '');
    ritmos.add(r22);

    var r23 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),

          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),

          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),

        ],
        timesShowAcordeInVideoInSeconds: [2, 38, 41, 44, 48, 51, 54, 58, 61,
          65, 68, 72, 75, 79, 82, 86, 89,
          92, 95],
        arrows: [
          Arrow.down(),
          Arrow.up(),
          Arrow.down(mascada: true),
          Arrow.down(),
          Arrow.down(mascada: true),
        ],
        divisionsRitmo: [
          Division.downAndUp(textPasso: '1'),
          Division.down(textPasso: '2', arrowOneMascada: true),
          Division.downAndDown(textPasso: '3', arrowTwoMascada: true)
        ],
        categorias: [
          Categoria(
              backgroundColor: reggaeColor,
              nome: 'Reggae',
              textColor: Colors.white,
              borderColor: Colors.black),
        ],
        acordesUtilizadosGravacao: 'G - D - Em - C - D - G',
        colorRitmo: Colors.deepPurple,
        apelido: 'Reggae',
        prioridade: 1,
        pathAudio: 'ritmo23.m4a',
        videoId: 'Klhio16dOa0',
        musicas: [Musica(nome: 'Xote da Alegria', autor: 'Falamansa')], feitoPor: 'Mateus Polonini Cardoso', videoViolaoId: '');
    ritmos.add(r23);

    var r24 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),

          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),

        ],
        timesShowAcordeInVideoInSeconds:   [2, 50, 55, 57, 60, 63, 66, 69, 72,
          79, 82, 85, 88, 91, 94, 97, 100, 102],
        arrows: [
          Arrow.down(),
          Arrow.up(),
          Arrow.down(mascada: true),
          Arrow.up(),
          Arrow.down(),
          Arrow.up(),
          Arrow.down(mascada: true)
        ],
        divisionsRitmo: [
          Division.downAndUp(textPasso: '1'),
          Division.down(textPasso: '2', arrowOneMascada: true),
          Division.upAndDown(textPasso: '3'),
          Division.up(textPasso: '4'),
          Division.down(textPasso: '5', arrowOneMascada: true)
        ],
        categorias: [
          Categoria(
              backgroundColor: danceEletronicaColor,
              nome: 'Dance/Eletrônica',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: popColor,
              nome: 'POP',
              textColor: Colors.white,
              borderColor: Colors.black),
        ],
        acordesUtilizadosGravacao: 'G - D - Em - C - D - G',
        colorRitmo: Colors.deepPurple,
        apelido: 'POP',
        prioridade: 1,
        pathAudio: 'ritmo24.m4a',
        videoId: 'CJggit8_KuM',
        musicas: [
          Musica(nome: 'Jingle Bells', autor: 'For Babies'),
        ], feitoPor: 'Mateus Polonini Cardoso', videoViolaoId: '');
    ritmos.add(r24);

    var r25 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
        ],
        timesShowAcordeInVideoInSeconds:
        [2, 41, 45, 48, 51, 54, 60, 67, 73, 76, 83],
        arrows: [
          Arrow.down(),
          Arrow.down(),
          Arrow.down(),
          Arrow.down(),
          Arrow.up(),
          Arrow.down(),
          Arrow.down(),
          Arrow.down(),
        ],
        divisionsRitmo: [
          Division.downAndDown(textPasso: '1'),
          Division.down(textPasso: '2'),
          Division.downAndUp(textPasso: '3'),
          Division.down(textPasso: '4'),
          Division.downAndDown(textPasso: '5')
        ],
        categorias: [
          Categoria(
              backgroundColor: popRockColor,
              nome: 'Pop rock',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: popColor,
              nome: 'POP',
              textColor: Colors.white,
              borderColor: Colors.black),
        ],
        acordesUtilizadosGravacao: 'C - G - Am - F - G - C',
        colorRitmo: Colors.deepPurple,
        apelido: 'Pop rock',
        prioridade: 1,
        pathAudio: 'ritmo25.m4a',
        videoId: 'PNW4T9nuB8E',
        musicas: [
          Musica(nome: 'Hey Jude', autor: 'Os Beatles'),
        ], feitoPor: 'Mateus Polonini Cardoso', videoViolaoId: '');
    ritmos.add(r25);

    var r26 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
        ],
        timesShowAcordeInVideoInSeconds: [2, 60, 65, 70, 73, 75, 84, 90, 95, 98, 101],
        arrows: [
          Arrow.down(),
          Arrow.up(),
          Arrow.down(mascada: true),
          Arrow.down(),
          Arrow.up(),
          Arrow.down(),
        ],
        divisionsRitmo: [
          Division.downAndUp(textPasso: '1'),
          Division.down(textPasso: '2', arrowOneMascada: true),
          Division.down(textPasso: '3'),
          Division.upAndDown(textPasso: '4')
        ],
        categorias: [
          Categoria(
              backgroundColor: teenColor,
              nome: 'Teen pop',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: popColor,
              nome: 'POP',
              textColor: Colors.white,
              borderColor: Colors.black)
        ],
        acordesUtilizadosGravacao: 'C - G - Am - F - G - C',
        colorRitmo: Colors.deepPurple,
        apelido: 'POP',
        prioridade: 1,
        pathAudio: 'ritmo26.m4a',
        videoId: 'gScZUJtyoUk',
        musicas: [
          Musica(
              nome: 'I\'m Not A Girl, Not Yet A Woman',
              autor: 'Britney Spears'),
        ], feitoPor: 'Mateus Polonini Cardoso', videoViolaoId: '');
    ritmos.add(r26);

    var r27 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
        ],
        timesShowAcordeInVideoInSeconds: [3, 62, 68, 72, 75, 78, 88, 93, 97, 100, 104],
        arrows: [
          Arrow.down(),
          Arrow.up(),
          Arrow.down(),
          Arrow.up(),
          Arrow.down(mascada: true),
          Arrow.up(),
        ],
        divisionsRitmo: [
          Division.downAndUp(textPasso: '1'),
          Division.downAndUp(textPasso: '2'),
          Division.downAndUp(textPasso: '3', arrowOneMascada: true),
        ],
        categorias: [
          Categoria(
              backgroundColor: popColor,
              nome: 'POP',
              textColor: Colors.white,
              borderColor: Colors.black),
        ],
        acordesUtilizadosGravacao: 'G - D - Em - C - D - G',
        colorRitmo: Colors.deepPurple,
        apelido: 'POP',
        prioridade: 1,
        pathAudio: 'ritmo27.m4a',
        videoId: 'LzgRBaTGvjM',
        musicas: [
          Musica(nome: 'Tribalistas', autor: 'Velha infãncia'),
        ], feitoPor: 'Mateus Polonini Cardoso', videoViolaoId: '');
    ritmos.add(r27);

    var r28 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),

          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),

          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),

          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),

        ],
        timesShowAcordeInVideoInSeconds: [1, 31, 34, 36, 40, 51, 54, 55,
          58, 63, 67, 76, 78, 80, 87,
          89, 92, 98, 100, 103, 106, 111,
          115, 117],
        arrows: [
          Arrow.down(),
          Arrow.up(),
          Arrow.down(),
          Arrow.up(),
          Arrow.down(),
        ],
        divisionsRitmo: [
          Division.down(textPasso: '1'),
          Division.upAndDown(textPasso: '2'),
          Division.upAndDown(textPasso: '3')
        ],
        categorias: [
          Categoria(
              backgroundColor: popColor,
              nome: 'POP',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: mpbColor,
              nome: 'MPB',
              textColor: Colors.white,
              borderColor: Colors.black),
        ],
        acordesUtilizadosGravacao: 'G - Am - D - G',
        colorRitmo: Colors.deepPurple,
        apelido: 'POP',
        prioridade: 1,
        pathAudio: 'ritmo28.m4a',
        videoId: 'Yp0t6mCHy5Q',
        musicas: [
          Musica(
              nome: 'Como é grande o meu amor por você',
              autor: 'Roberto Carlos'),
        ], videoViolaoId: '', feitoPor: 'Mateus Polonini Cardoso');
    ritmos.add(r28);

    var r29 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),

          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
        ],
        timesShowAcordeInVideoInSeconds: [2, 70, 74, 77, 80, 87, 91,
          95, 99],
        arrows: [
          Arrow.down(),
          Arrow.down(),
          Arrow.up(),
          Arrow.down(mascada: true),
          Arrow.up(),
          Arrow.down(),
        ],
        divisionsRitmo: [
          Division.down(textPasso: '1'),
          Division.downAndUp(textPasso: '2'),
          Division.down(textPasso: '3', arrowOneMascada: true),
          Division.upAndDown(textPasso: '4')
        ],
        categorias: [
          Categoria(
              backgroundColor: xoteColor,
              nome: 'Xote',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: forroColor,
              nome: 'Forró',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: reggaeColor,
              nome: 'Reggae',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: sertanejoColor,
              nome: 'Setanejo',
              textColor: Colors.white,
              borderColor: Colors.black)
        ],
        acordesUtilizadosGravacao: 'G - D - Em - C - D - G',
        colorRitmo: Colors.deepPurple,
        apelido: 'Reggae',
        prioridade: 1,
        pathAudio: 'ritmo29.m4a',
        videoId: 'XdQ9UtLyvp8',
        musicas: [
          Musica(nome: 'What a wonderful world', autor: 'Tiago Iorc'),
          Musica(nome: 'Até mais ver', autor: 'Waldonys'),
          Musica(nome: 'Quero ser feliz também', autor: 'Natiruts'),
          Musica(nome: 'Leticia', autor: 'Zé Vaqueiro')
        ], feitoPor: 'Mateus Polonini Cardoso', videoViolaoId: '');
    ritmos.add(r29);

    var r30 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),

          DicionarioAcordesUkulele.getListAcordes().elementAt(4),

        ],
        timesShowAcordeInVideoInSeconds: [1, 40, 43, 48, 50, 52, 57, 60, 65, 66, 68],
        arrows: [
          Arrow.down(),
          Arrow.up(),
          Arrow.down(),
          Arrow.down(),
          Arrow.down(),
        ],
        divisionsRitmo: [
          Division.down(textPasso: '1'),
          Division.upAndDown(textPasso: '2'),
          Division.downAndDown(textPasso: '3')
        ],
        categorias: [
          Categoria(
              backgroundColor: sertanejoColor,
              nome: 'Sertanejo',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: guaraniaColor,
              nome: 'Guarania',
              textColor: Colors.white,
              borderColor: Colors.black),
        ],
        acordesUtilizadosGravacao: 'G - D - Em - C - D - G',
        colorRitmo: Colors.deepPurple,
        apelido: 'Guarania',
        prioridade: 1,
        pathAudio: 'ritmo30.m4a',
        videoId: 'CS8KpdKwy_o',
        musicas: [
          Musica(nome: 'Mala amarela', autor: 'Daniel'),
          Musica(nome: 'Blusa Vermelha', autor: 'Trio Parada Dura'),
          Musica(nome: 'Sem você', autor: 'Victor e Léo'),
          Musica(nome: 'Fio de Cabelo', autor: 'Xitãozinho e Xororó'),
          Musica(nome: 'Tocando em Frente', autor: 'Almir Sater'),
          Musica(nome: 'Saudade da minha terra', autor: 'Chitãozinho e Xororó'),
          Musica(nome: 'Boate Azul', autor: 'Bruno e Marrone'),
          Musica(
              nome: 'Ainda ontem chorei de saudade',
              autor: 'João Mineiro e Marciano'),
          Musica(nome: 'Cabecinha no ombro', autor: 'Almir Sater'),
          Musica(nome: 'Telefone mudo', autor: 'Trio parada dura'),
          Musica(nome: 'India', autor: 'Roberto Carlos'),
        ], feitoPor: 'Mateus Polonini Cardoso', videoViolaoId: '');
    ritmos.add(r30);

    var r31 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),

          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),

          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),

        ],
        timesShowAcordeInVideoInSeconds: [
          3, 78, 82, 85, 90, 92, 95, 100,
          102, 105, 109, 112,  114, 119, 121, 123,
          128, 130, 132, 137, 139, 142],
        arrows: [
          Arrow.up(),
          Arrow.down(),
          Arrow.up(),
          Arrow.down(),
          Arrow.up(),
          Arrow.down(),
          Arrow.down(),
          Arrow.up(),
          Arrow.down(),
          Arrow.up(),
          Arrow.up(),
          Arrow.up()
        ],
        divisionsRitmo: [
          Division.upAndDown(textPasso: '1'),
          Division.upAndDown(textPasso: '2'),
          Division.upAndDown(textPasso: '3'),
          Division.downAndUp(textPasso: '4'),
          Division.downAndUp(textPasso: '5'),
          Division.upAndUp(textPasso: '6')
        ],
        categorias: [
          Categoria(
              backgroundColor: sambaColor,
              nome: 'Samba',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: pagodeColor,
              nome: 'Pagode',
              textColor: Colors.white,
              borderColor: Colors.black)
        ],
        acordesUtilizadosGravacao: 'G - Am - D - G',
        colorRitmo: Colors.deepPurple,
        apelido: 'Samba',
        prioridade: 1,
        pathAudio: 'ritmo31.m4a',
        videoId: 'fhZCPJmhrmY',
        musicas: [
          Musica(nome: 'Faixa Amarela', autor: 'Zeca Pagodinho'),
        ], videoViolaoId: '', feitoPor: 'Mateus Polonini Cardoso');
    ritmos.add(r31);

    var r32 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),

          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),

          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),

          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),

        ],
        timesShowAcordeInVideoInSeconds: [
          2, 8, 13, 17, 23, 29, 35, 42, 45, 49, 52,
          56, 60, 63, 67, 70, 73, 77, 80, 84, 87,
          91, 94, 97, 101, 103, 109, 115, 121, 127,
          132, 137
        ],
        arrows: [
          Arrow.down(),
          Arrow.down(),
          Arrow.up(),
          Arrow.down(mascada: true),
          Arrow.down(),
          Arrow.up(),
          Arrow.down(mascada: true),
          Arrow.down(),
          Arrow.up(),
          Arrow.down(mascada: true),
          Arrow.down(),
          Arrow.up(),
        ],
        divisionsRitmo: [
          Division.down(textPasso: '1'),
          Division.downAndUp(textPasso: '2'),
          Division.down(textPasso: '3', arrowOneMascada: true),
          Division.downAndUp(textPasso: '4'),
          Division.down(textPasso: '5', arrowOneMascada: true),
          Division.downAndUp(textPasso: '6'),
          Division.down(textPasso: '7', arrowOneMascada: true),
          Division.downAndUp(textPasso: '8'),
        ],
        categorias: [
          Categoria(
              backgroundColor: popColor,
              nome: 'POP',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: sertanejoColor,
              nome: 'Setanejo universitario',
              textColor: Colors.white,
              borderColor: Colors.black)
        ],
        acordesUtilizadosGravacao: 'G - D - Em - C - D - G',
        colorRitmo: Colors.deepPurple,
        apelido: 'Sertanejo',
        prioridade: 1,
        pathAudio: 'ritmo32.m4a',
        videoId: 'SNlTLjd6W04',
        musicas: [
          Musica(nome: 'Bebi minha bicicleta', autor: 'Zé neto e Cristiano'),
        ], feitoPor: 'Mateus Polonini Cardoso', videoViolaoId: '');
    ritmos.add(r32);

    var r33 = Ritmo(
      arrows: [
        Arrow.up(),
        Arrow.down(mascada: true)
      ],
      acordesToShowSobreVideoOrderTime: [],
      timesShowAcordeInVideoInSeconds: [],
      colorRitmo: Colors.deepPurple,
      prioridade: 1,
      apelido: "Forró Arrasta-pé",
      pathAudio: 'ritmo33.m4a',
      musicas: [
        Musica(nome: 'Pula a fogueira', autor: 'Francisco Alves'),
        Musica(nome: 'Se a canoa não virar', autor: 'Emilinha Borba'),
        Musica(nome: 'Mamãe eu quero', autor: 'Carmen Miranda'),
        Musica(nome: 'Cachaça não é agua', autor: ' Marinósio Trigueiros Filho')
      ],
      divisionsRitmo: [
        Division.up(),
        Division.down(arrowOneMascada: true)
      ],
      categorias: [
        Categoria(nome: "Forró Arrasta-pé",
            backgroundColor: forroColor,
            textColor: Colors.white,
            borderColor: Colors.black
        ),
        Categoria(nome: "Marchinha",
            backgroundColor: marchinhaColor,
            textColor: Colors.white,
            borderColor: Colors.black
        ),
      ],
      videoId: 'jroi1C6RraA', feitoPor: 'Mateus Polonini Cardoso', videoViolaoId: '',

    );
    ritmos.add(r33);

    var r34 = Ritmo(
      arrows: [
        Arrow.down(),
        Arrow.up(),
        Arrow.down(mascada: true),
        Arrow.up(),
      ],
      acordesToShowSobreVideoOrderTime: [],
      timesShowAcordeInVideoInSeconds: [],
      acordesUtilizadosGravacao: 'G - Am - D - G',
      colorRitmo: Colors.deepPurple,
      apelido: "Reggae",
      musicas: <Musica>[
        Musica(nome: 'Three Little Birds', autor: 'Bob Marley')
      ],
      divisionsRitmo: [
        Division.downAndUp(textPasso: "1"),
        Division.downAndUp(textPasso: "2", arrowOneMascada: true)
      ],
      categorias: [
        Categoria(
            nome: "Reggae",
            backgroundColor: reggaeColor,
            textColor: Colors.white,
            borderColor: Colors.black
        )
      ],
      videoId: '83RyhhdA2oA', feitoPor: 'Mateus Polonini Cardoso', videoViolaoId: '',
    );
    ritmos.add(r34);

    var r35 = Ritmo(
      arrows: [
        Arrow.down(),
        Arrow.up(),
        Arrow.down(mascada: true),
        Arrow.up(),
        Arrow.down(),
        Arrow.down(),
      ],
      timesShowAcordeInVideoInSeconds: [],
      acordesToShowSobreVideoOrderTime: [],
      acordesUtilizadosGravacao: 'G - Am - D - G',
      divisionsRitmo: [
        Division.downAndUp(textPasso: "1"),
        Division.down(textPasso: "2", arrowOneMascada: true),
        Division.upAndDown(textPasso: "3"),
        Division.down(textPasso: "4")
      ],
      categorias: <Categoria>[
        Categoria(
            nome: "Reggae",
            backgroundColor: reggaeColor,
            textColor: Colors.white,
            borderColor: Colors.black
        ),
        Categoria(
            nome: "Tecnobrega",
            backgroundColor: tecnobregaColor,
            textColor: Colors.white,
            borderColor: Colors.black
        )
      ],
      musicas: [
        Musica(nome: 'Recairei', autor: 'Barões da Pisadinha'),
        Musica(nome: 'Até mais ver', autor: 'Waldonys'),
        Musica(nome: "Xote dos milagres", autor: "Falamansa")
      ],
      apelido: "Tecnobrega",
      videoId: 'uaQ1b0kYbRg', colorRitmo: Colors.purple, feitoPor: 'Mateus Polonini Cardoso', videoViolaoId: '',

    );

    ritmos.add(r35);

    var r36 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(1),
          DicionarioAcordesUkulele.getListAcordes().elementAt(14)
        ],
        timesShowAcordeInVideoInSeconds: [3, 5, 7, 10, 13, 15, 18, 21, 24, 27,
          28, 31, 34, 37, 40, 43, 45, 48, 50, 52, 54, 56, 58, 59, 60],
        arrows: [
          Arrow.down(),
          Arrow.up(),
          Arrow.up(),
          Arrow.up(),
          Arrow.down(),
          Arrow.up(),
        ],
        divisionsRitmo: [
          Division.down(textPasso: '1'),
          Division.upAndUp(textPasso: '2'),
          Division.upAndDown(textPasso: '3'),
          Division.up(textPasso: '4')
        ],
        categorias: [
          Categoria(
              backgroundColor: sertanejoColor,
              nome: 'Sertanejo',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: arrochaColor,
              nome: 'Arrocha',
              textColor: Colors.white,
              borderColor: Colors.black),
        ],
        acordesUtilizadosGravacao: 'Bm - G - D - A - Bm - G - D - A - G',
        colorRitmo: Colors.deepPurple,
        apelido: 'Arrocha',
        prioridade: 1,
        pathAudio: 'ritmo5.m4a',
        videoId: 'x4b-WqKxUgg',
        videoViolaoId: 'qI0bT5xbHpw',
        musicas: [
          Musica(nome: 'Só tem eu', autor: 'Zé Felipe'),
          Musica(nome: 'Camaro amarelo', autor: 'Munhoz e Mariano'),
          Musica(nome: 'Vem ni mim Dodge RAM', autor: 'Israel Novaes'),
        ], feitoPor: 'Mateus Polonini Cardoso');
    ritmos.add(r36);


    var r37 = Ritmo(
        acordesToShowSobreVideoOrderTime: [
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(16),
          DicionarioAcordesUkulele.getListAcordes().elementAt(3),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0),
          DicionarioAcordesUkulele.getListAcordes().elementAt(4),
          DicionarioAcordesUkulele.getListAcordes().elementAt(0)
        ],
        timesShowAcordeInVideoInSeconds: [2, 32, 36, 42, 44, 47, 50, 51],
        arrows: [
          Arrow.down(mascada: true),
          Arrow.up(),
          Arrow.down(),
          Arrow.down(),
        ],
        divisionsRitmo: [
          Division.downAndUp(textPasso: '1', arrowOneMascada: true),
          Division.downAndDown(textPasso: '2'),
        ],
        categorias: [
          Categoria(
              backgroundColor: sertanejoRaizColor,
              nome: 'Sertanejo raiz',
              textColor: Colors.white,
              borderColor: Colors.black),
          Categoria(
              backgroundColor: modaoSertanejoColor,
              nome: 'Modão sertanejo',
              textColor: Colors.white,
              borderColor: Colors.black),
        ],
        acordesUtilizadosGravacao: 'D',
        colorRitmo: Colors.deepPurple,
        apelido: 'Modão sertanejo',
        prioridade: 1,
        pathAudio: 'ritmo4.m4a',
        videoId: 'gp5rnMFqUQg',
        videoViolaoId: 'UkXv6jx-a-w',
        musicas: [
          Musica(nome: 'Pagode de brasilia', autor: 'Tião Carreiro'),
          Musica(nome: 'Paixão mineira', autor: 'Cesar Menote e Fabiano'),
          Musica(nome: 'Bão também', autor: 'Cesar Menote e Fabiano'),
          Musica(nome: 'Não era eu', autor: 'Cesar Menote e Fabiano'),
        ], feitoPor: 'Mateus Polonini Cardoso');
    ritmos.add(r37);

    var r38 = Ritmo(timesShowAcordeInVideoInSeconds: [],
        videoId: '-KokH38oLIY',
        categorias: [
          Categoria(
              nome: 'Ijexá I',
              backgroundColor: Colors.purple
          ),
          Categoria(
              nome: 'Ijexa II',
              backgroundColor: Colors.deepPurple
          ),
          Categoria(
            nome: 'MPB',
            backgroundColor: mpbColor
          )
        ],
        apelido: 'Ijexa',
        acordesToShowSobreVideoOrderTime: [],
        musicas: [
          Musica(nome: 'Apesar de querer' , autor: 'Rodrigo Alarcon'),
          Musica(nome: 'Beleza Pura', autor: 'Caetano Veloso'),
          Musica(nome: 'Palco', autor: 'Gilberto Gil'),
          Musica(nome: 'Sina', autor: 'Djavan'),
          Musica(nome: 'São Jorge', autor: 'Julçara Marçal e Kiko Dinucci'),
          Musica(nome: 'Afoxé do Nêgo Véio', autor: 'Naná Vasconcelos'),
          Musica(nome: 'Dorival', autor: 'Academia da Berlinda'),
          Musica(nome: 'Água', autor: 'BaianaSystem'),
        ],
        arrows: [
        ],
        isDedilhado: true,
        sequenciaDedilhado: 'P-(IMA)-PP-(IMA)-P',
        feitoPor: 'Thayna Brito',
        colorRitmo: Colors.green,
        divisionsRitmo: [
        ]

    );

    ritmos.add(r38);

    var r39 = Ritmo(musicas: [
      Musica(nome: 'Manish Boy', autor: ' Muddy Waters'),
      Musica(nome: 'Dust My Broom', autor: 'Elmore James'),
      Musica(nome: 'Five Long Years', autor: 'Buddy Guy'),
      Musica(nome: 'Puro Malte', autor: 'Blues Etílicos'),
      Musica(nome: 'Eu vou estar com você', autor: 'Made in Brazil'),
    ],
        acordesToShowSobreVideoOrderTime: [],
        apelido: 'BLUES',
        categorias: [
          Categoria(backgroundColor: Colors.teal,
              nome: 'BLUES'
          )
        ],
        videoId: 'GHul1Qsz5fU',
        timesShowAcordeInVideoInSeconds: [],
        divisionsRitmo: [
          Division.down(),
          Division.downAndDown(textPasso: '2'),
          Division.downAndDown(textPasso: '3'),
          Division.down(textPasso: '4'),
          Division.down(textPasso: '4'),
          Division.down(textPasso: '4'),
          Division.down(textPasso: '4'),
        ],
        colorRitmo: Colors.red,
        feitoPor: 'Thayna Brito',
        videoViolaoId: '',
        arrows: [
          Arrow.down(),
          Arrow.down(),
          Arrow.down(),
          Arrow.down(),
          Arrow.down(),
          Arrow.down(),
          Arrow.down(),
          Arrow.down(),
          Arrow.down()
        ]
    );
    ritmos.add(r39);

    var r40 = Ritmo(musicas: [
      Musica(nome: 'Garota de Ipanema', autor: 'Tom Jobim'),
      Musica(nome: 'O barquinho', autor: 'Roberto Menescal'),
      Musica(nome: 'Só tinha que ser você', autor: 'Tom Jobim'),
      Musica(nome: 'Flor de liz', autor: 'Djavan'),
      Musica(nome: 'Chove chuva', autor: 'Jorge Ben Jor'),
      Musica(nome: 'Samba de Verão', autor: 'Caetano Veloso'),
    ],
        acordesToShowSobreVideoOrderTime: [],
        apelido: 'MPB/BOSSA NOVA 2',
        categorias: [
          Categoria(backgroundColor: mpbColor,
              nome: 'MPB'
          ),
          Categoria(backgroundColor: bossaNova,
              nome: 'BOSSA NOVA'
          ),
        ],
        videoId: 'z5rH5R5oAI8',
        isDedilhado: true,
        sequenciaDedilhado: 'P-(IMA)-P-(IMA)(IMA)-P-(IMA)(IMA) - P - (IMA)',
        timesShowAcordeInVideoInSeconds: [],
        colorRitmo: Colors.red,
        feitoPor: 'Thayna Brito',
        videoViolaoId: '',
        arrows: [
        ], divisionsRitmo: []
    );
    ritmos.add(r40);

    List<Ritmo> ritmosUkuleleAux = [];
    RitmosUkuleleleData.getAllRitmos().forEach((element) {
      element.categorias.add(Categoria(nome: "Ukulele", backgroundColor: Colors.brown));
      ritmosUkuleleAux.add(element);
    });


    ritmos.addAll(ritmosUkuleleAux);
    return ritmos;
  }
}
