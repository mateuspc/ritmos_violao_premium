

import 'package:flutter/material.dart';
import 'package:ritmos_de_violao_premium/models/arrow.dart';
import 'package:ritmos_de_violao_premium/models/categoria.dart';
import 'package:ritmos_de_violao_premium/models/video_aula.dart';
import 'package:ritmos_de_violao_premium/styles/app_colors.dart';

class CursoLevadasData {

  static List<VideoAula> getVideoAulasLevadas(){

    List<VideoAula> list = [];

    VideoAula va1 = VideoAula(titulo: "AULA #1 -  \"BAIXO CIMA\"",
      subtitulo: "Aula de ritmo",
      videoId: "M_rOEsBW6Fo",
      thumbnail: "https://img.youtube.com/vi/M_rOEsBW6Fo/hqdefault.jpg",
      destaques: [
        "Uma batida pra baixo e outra para cima",
        "Quando subimos com a unha do polegar o som fica melhor",
        "Tente não movimentar o braço e sim a mão"
      ],
      arrows: [
        Arrow.down(),
        Arrow.up()
      ],
      categorias: [
        Categoria(
            nome: 'Iniciante',
            backgroundColor: reggaeColor,
            borderColor: Colors.black,
            textColor: Colors.white),
        Categoria(
            nome: 'Técnica',
            backgroundColor: mpbColor,
            borderColor: Colors.black,
            textColor: Colors.white),
        Categoria(
            nome: 'Módulo 1',
            backgroundColor: forroColor,
            borderColor: Colors.black,
            textColor: Colors.white),
      ],

    );

    list.add(va1);

    VideoAula va2 = VideoAula(titulo: "AULA #2 - A TÉCNICA DO POLEGAR E ABRE",
      subtitulo: "Aula de ritmo",
      videoId: "sGZXJcIMm2g",
      thumbnail: "https://img.youtube.com/vi/sGZXJcIMm2g/hqdefault.jpg",
      destaques: [
        "Desse com o polegar e abre batendo as unhas na corda.",
        "Se você estiver unhas grades a projesão sonora pode ser maior.",
        "Essa técnica pode ser usadas em diferentes levadas."
      ],
      arrows: [
        Arrow.down(),
        Arrow.up()
      ],
      categorias: [
        Categoria(
            nome: 'Iniciante',
            backgroundColor: reggaeColor,
            borderColor: Colors.black,
            textColor: Colors.white),
        Categoria(
            nome: 'Técnica',
            backgroundColor: mpbColor,
            borderColor: Colors.black,
            textColor: Colors.white),
        Categoria(
            nome: 'Módulo 1',
            backgroundColor: forroColor,
            borderColor: Colors.black,
            textColor: Colors.white),
      ],

    );

    list.add(va2);

    VideoAula va3 = VideoAula(titulo: "AULA #3 - TÉCNICA  DO \"ABAFAMENTO\"",
      subtitulo: "Aula de ritmo",
      videoId: "7X7EYFCGR4Q",
      thumbnail: "https://img.youtube.com/vi/7X7EYFCGR4Q/hqdefault.jpg",
      destaques: [
        "A técnica do abafamento é utilizada em diferentes levadas",
        "Toca e abáfa as cordas deixando a barriga da mão interromper o som das cordas",
        "Treine bastante até conseguir"
      ],
      arrows: [
        Arrow.down(),
        Arrow.up()
      ],
      categorias: [
        Categoria(
            nome: 'Iniciante',
            backgroundColor: reggaeColor,
            borderColor: Colors.black,
            textColor: Colors.white),
        Categoria(
            nome: 'Técnica',
            backgroundColor: mpbColor,
            borderColor: Colors.black,
            textColor: Colors.white),
        Categoria(
            nome: 'Módulo 1',
            backgroundColor: forroColor,
            borderColor: Colors.black,
            textColor: Colors.white),
      ],

    );

    list.add(va3);
    VideoAula va4 = VideoAula(titulo: "AULA #4 - APRENDENDO REGGAE",
      subtitulo: "Aula de ritmo",
      videoId: "zWhFo_drbGk",
      emBreve: false,
      thumbnail: "https://img.youtube.com/vi/zWhFo_drbGk/hqdefault.jpg",
      destaques: [
        "Reggae é um gênero musical criado na Jamaica do fim da década de 1960.",
        "Depois de treinar bastante, tente tocar a música Oh! Chuva de falamansa.",
        "No Brasil, é um ritmo predominante no Estado do Maranhão, surgindo na periferia da capital maranhense na década de 80.",
        "Se quiser saber mais, pesquise sobre o Museu do Reggae Maranhão"
      ],
      arrows: [
        Arrow.down(),
        Arrow.up()
      ],
      categorias: [
        Categoria(
            nome: 'Iniciante',
            backgroundColor: reggaeColor,
            borderColor: Colors.black,
            textColor: Colors.white),
        Categoria(
            nome: '#primeira',
            backgroundColor: mpbColor,
            borderColor: Colors.black,
            textColor: Colors.white),
        Categoria(
            nome: 'Módulo 1',
            backgroundColor: forroColor,
            borderColor: Colors.black,
            textColor: Colors.white),
      ],

    );

    list.add(va4);

    VideoAula va5 = VideoAula(titulo: "AULA #5 - APRENDENDO OUTRA LEVADA",
      subtitulo: "Aula de ritmo",
      videoId: "7X7EYFCGR4Q",
      emBreve: true,
      thumbnail: "https://img.youtube.com/vi/7X7EYFCGR4Q/hqdefault.jpg",
      destaques: [
        "A técnica do abafamento é utilizada em diferentes levadas",
        "Toca e abáfa as cordas deixando a barriga da mão interromper o som das cordas",
        "Treine bastante até conseguir"
      ],
      arrows: [
        Arrow.down(),
        Arrow.up()
      ],
      categorias: [
        Categoria(
            nome: 'Iniciante',
            backgroundColor: Colors.grey,
            borderColor: Colors.black,
            textColor: Colors.white),
        Categoria(
            nome: '#novalevada',
            backgroundColor: Colors.grey,
            borderColor: Colors.black,
            textColor: Colors.white),
        Categoria(
            nome: 'Módulo 1',
            backgroundColor: Colors.grey,
            borderColor: Colors.black,
            textColor: Colors.white),
      ],

    );

    list.add(va5);

    return list;

  }
}