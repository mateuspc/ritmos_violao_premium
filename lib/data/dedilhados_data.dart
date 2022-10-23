import 'package:flutter/material.dart';
import 'package:ritmos_de_violao_premium/models/categoria.dart';
import 'package:ritmos_de_violao_premium/models/dedilhado.dart';
import 'package:ritmos_de_violao_premium/models/divisao.dart';
import 'package:ritmos_de_violao_premium/models/musica.dart';
import 'package:ritmos_de_violao_premium/styles/app_colors.dart';

class DedilhadosData {
  static List<Dedilhado> getDedilhados() {
    List<Dedilhado> dedilhados = [];
    var d1 = Dedilhado(
        padrao: 'P  I  M',
        videoId: '8GuoBZIHxCw',
        divisoes: [
          Divisao(
              polegarColor: true,
              indicadorColor: false,
              medioColor: false,
              anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: false,
            medioColor: true,
            anelarColor: false,),
        ],
        musicas: [],
        categorias: [
          Categoria(
              nome: 'High G',
              borderColor: Colors.black,
              backgroundColor: guaraniaColor)
        ], feitoPor: 'Marcel Viana', nome: 'Padrão');
    dedilhados.add(d1);

    var d2 = Dedilhado(
        padrao: 'P  M  I',
        videoId: '8GuoBZIHxCw',
        divisoes: [
          Divisao(
            polegarColor: true,
            indicadorColor: false,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: false,
            medioColor: true,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: false,
            anelarColor: false,),
        ],
        musicas: [],
        categorias: [
          Categoria(
              nome: 'High G',
              borderColor: Colors.black,
              backgroundColor: guaraniaColor)
        ], feitoPor: 'Marcel Viana', nome: 'Padrão');
    dedilhados.add(d2);

    var d3 = Dedilhado(
        padrao: 'P  I  P  M',
        videoId: '8GuoBZIHxCw',
        divisoes: [
          Divisao(
            polegarColor: true,
            indicadorColor: false,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: true,
            indicadorColor: false,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: false,
            medioColor: true,
            anelarColor: false,),
        ],
        musicas: [],
        categorias: [
          Categoria(
              nome: 'High G',
              borderColor: Colors.black,
              backgroundColor: guaraniaColor)
        ], feitoPor: 'Marcel Viana', nome: 'Padrão');
    dedilhados.add(d3);

    var d4 = Dedilhado(
        padrao: 'P M P I',
        videoId: '8GuoBZIHxCw',
        divisoes: [
          Divisao(
            polegarColor: true,
            indicadorColor: false,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: false,
            medioColor: true,
            anelarColor: false,),
          Divisao(
            polegarColor: true,
            indicadorColor: false,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: false,
            anelarColor: false,),
        ],
        musicas: [],
        categorias: [
          Categoria(
              nome: 'High G',
              borderColor: Colors.black,
              backgroundColor: guaraniaColor)
        ], feitoPor: 'Marcel Viana', nome: 'Padrão');
    dedilhados.add(d4);

    var d5 = Dedilhado(
        padrao: 'P  (I  M)',
        videoId: '8GuoBZIHxCw',
        divisoes: [
          Divisao(
            polegarColor: true,
            indicadorColor: false,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: true,
            anelarColor: false,),
        ],
        musicas: [],
        categorias: [
          Categoria(
              nome: 'High G',
              borderColor: Colors.black,
              backgroundColor: guaraniaColor)
        ], feitoPor: 'Marcel Viana', nome: 'Ritmo de Marcha');
    dedilhados.add(d5);

    var d6 = Dedilhado(
        padrao: 'P  (I  M) (I  M)',
        videoId: '8GuoBZIHxCw',
        divisoes: [
          Divisao(
            polegarColor: true,
            indicadorColor: false,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: true,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: true,
            anelarColor: false,),
        ],
        musicas: [],
        categorias: [
          Categoria(
              nome: 'High G',
              borderColor: Colors.black,
              backgroundColor: guaraniaColor)
        ], feitoPor: 'Marcel Viana', nome: 'Ritmo de valsa');
    dedilhados.add(d6);

    var d7 = Dedilhado(
        padrao: 'P  P (I  M)',
        videoId: '8GuoBZIHxCw',
        divisoes: [
          Divisao(
            polegarColor: true,
            indicadorColor: false,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: true,
            indicadorColor: false,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: true,
            anelarColor: false,),
        ],
        musicas: [],
        categorias: [
          Categoria(
              nome: 'High G',
              borderColor: Colors.black,
              backgroundColor: guaraniaColor)
        ], feitoPor: 'Marcel Viana', nome: 'Baião');
    dedilhados.add(d7);

    var d8 = Dedilhado(
        padrao: 'P (I  M) (I  M) P (I M)',
        videoId: '8GuoBZIHxCw',
        divisoes: [
          Divisao(
            polegarColor: true,
            indicadorColor: false,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: true,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: true,
            anelarColor: false,),
          Divisao(
            polegarColor: true,
            indicadorColor: false,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: true,
            anelarColor: false,),
        ],
        musicas: [],
        categorias: [
          Categoria(
              nome: 'High G',
              borderColor: Colors.black,
              backgroundColor: guaraniaColor)
        ], feitoPor: 'Marcel Viana', nome: 'Samba');
    dedilhados.add(d8);

    var d9 = Dedilhado(
        padrao: '(P I  M) M I P (I M) (P I M) (I M) (I M) P (I M)',
        videoId: '8GuoBZIHxCw',
        divisoes: [
          Divisao(
            polegarColor: true,
            indicadorColor: true,
            medioColor: true,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: false,
            medioColor: true,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: true,
            indicadorColor: false,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: true,
            anelarColor: false,),
          Divisao(
            polegarColor: true,
            indicadorColor: true,
            medioColor: true,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: true,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: true,
            anelarColor: false,),
          Divisao(
            polegarColor: true,
            indicadorColor: false,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: true,
            anelarColor: false,),
        ],
        musicas: [],
        categorias: [
          Categoria(
              nome: 'High G',
              borderColor: Colors.black,
              backgroundColor: guaraniaColor)
        ], feitoPor: 'Marcel Viana', nome: 'Bossa nova/samba');
    dedilhados.add(d9);

    var d10 = Dedilhado(
        padrao: 'P3 I  P4 M',
        videoId: '8GuoBZIHxCw',
        divisoes: [
          Divisao(
            polegarColor: true,
            indicadorColor: false,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: true,
            indicadorColor: false,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: false,
            medioColor: true,
            anelarColor: false,),
          Divisao(
            polegarColor: true,
            indicadorColor: false,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: false,
            anelarColor: false,),
        ],
        musicas: [],
        categorias: [
          Categoria(
              nome: 'High G',
              borderColor: Colors.black,
              backgroundColor: guaraniaColor)
        ], feitoPor: 'Marcel Viana', nome: 'Padrão');
    dedilhados.add(d10);

    var d11 = Dedilhado(
        padrao: 'P3 M  P4 I',
        videoId: '8GuoBZIHxCw',
        divisoes: [
          Divisao(
            polegarColor: true,
            indicadorColor: false,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: false,
            medioColor: true,
            anelarColor: false,),
          Divisao(
            polegarColor: true,
            indicadorColor: false,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: false,
            anelarColor: false,),
        ],
        musicas: [],
        categorias: [
          Categoria(
              nome: 'High G',
              borderColor: Colors.black,
              backgroundColor: guaraniaColor)
        ], feitoPor: 'Marcel Viana', nome: 'Padrão');
    dedilhados.add(d11);

    var d12 = Dedilhado(
        padrao: 'P3 I  P4 M P4 I',
        videoId: '8GuoBZIHxCw',
        divisoes: [
          Divisao(
            polegarColor: true,
            indicadorColor: false,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: true,
            indicadorColor: false,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: false,
            medioColor: true,
            anelarColor: false,),
          Divisao(
            polegarColor: true,
            indicadorColor: false,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: false,
            anelarColor: false,),
        ],
        musicas: [Musica(nome: 'Ave Maria', autor: 'Schubert')],
        categorias: [
          Categoria(
              nome: 'High G',
              borderColor: Colors.black,
              backgroundColor: guaraniaColor)
        ], feitoPor: 'Marcel Viana', nome: 'Padrão');
    dedilhados.add(d12);

    var d13 = Dedilhado(
        padrao: 'T I M A',
        videoId: '8GuoBZIHxCw',
        divisoes: [
          Divisao(
            polegarColor: true,
            indicadorColor: true,
            medioColor: true,
            anelarColor: true,),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: false,
            medioColor: true,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: false,
            medioColor: false,
            anelarColor: true,),
        ],
        musicas: [],
        categorias: [
          Categoria(
              nome: 'Low G',
              borderColor: Colors.black,
              backgroundColor: Colors.deepOrange),
          Categoria(
              nome: 'High G',
              borderColor: Colors.black,
              backgroundColor: guaraniaColor)
        ], feitoPor: 'Marcel Viana', nome: 'Padrão');
    dedilhados.add(d13);

    var d14 = Dedilhado(
        padrao: 'T A M I',
        videoId: '8GuoBZIHxCw',
        divisoes: [
          Divisao(
            polegarColor: true,
            indicadorColor: true,
            medioColor: true,
            anelarColor: true,),
          Divisao(
            polegarColor: false,
            indicadorColor: false,
            medioColor: false,
            anelarColor: true,),
          Divisao(
            polegarColor: false,
            indicadorColor: false,
            medioColor: true,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: false,
            anelarColor: false,),
        ],
        musicas: [],
        categorias: [
          Categoria(
              nome: 'Low G',
              borderColor: Colors.black,
              backgroundColor: Colors.deepOrange),
          Categoria(
              nome: 'High G',
              borderColor: Colors.black,
              backgroundColor: guaraniaColor)
        ], feitoPor: 'Marcel Viana', nome: 'Padrão');
    dedilhados.add(d14);

    var d15 = Dedilhado(
        padrao: 'T I M A M I',
        videoId: '8GuoBZIHxCw',
        divisoes: [
          Divisao(
            polegarColor: true,
            indicadorColor: true,
            medioColor: true,
            anelarColor: true,),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: false,
            medioColor: true,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: false,
            medioColor: false,
            anelarColor: true,),
          Divisao(
            polegarColor: false,
            indicadorColor: false,
            medioColor: true,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: false,
            anelarColor: false,),
        ],
        musicas: [],
        categorias: [
          Categoria(
              nome: 'Low G',
              borderColor: Colors.black,
              backgroundColor: Colors.deepOrange),
          Categoria(
              nome: 'High G',
              borderColor: Colors.black,
              backgroundColor: guaraniaColor)
        ], feitoPor: 'Marcel Viana', nome: 'Padrão');
    dedilhados.add(d15);

    var d16 = Dedilhado(
        padrao: 'T I M I A I M I',
        videoId: '8GuoBZIHxCw',
        divisoes: [
          Divisao(
            polegarColor: true,
            indicadorColor: true,
            medioColor: true,
            anelarColor: true),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: false,
            medioColor: true,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: false,
            medioColor: false,
            anelarColor: true,),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: false,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: false,
            medioColor: true,
            anelarColor: false,),
          Divisao(
            polegarColor: false,
            indicadorColor: true,
            medioColor: false,
            anelarColor: false,),
        ],
        musicas: [],
        categorias: [
          Categoria(
              nome: 'Low G',
              borderColor: Colors.black,
              backgroundColor: Colors.deepOrange),
          Categoria(
              nome: 'High G',
              borderColor: Colors.black,
              backgroundColor: guaraniaColor)
        ], feitoPor: 'Marcel Viana', nome: 'Padrão');
    dedilhados.add(d16);

    var d17 = Dedilhado(
        padrao: 'T (I M A) (I M A)',
        videoId: '8GuoBZIHxCw',
        divisoes: [
          Divisao(
              polegarColor: true,
              indicadorColor: true,
              medioColor: true,
              anelarColor: true),
          Divisao(
              polegarColor: false,
              indicadorColor: true,
              medioColor: true,
              anelarColor: true),
          Divisao(
              polegarColor: false,
              indicadorColor: true,
              medioColor: true,
              anelarColor: true),
        ],
        musicas: [
          Musica(nome: 'Estrada da vida', autor: 'Milionário e José Rico')
        ],
        categorias: [
          Categoria(
              nome: 'Low G',
              borderColor: Colors.black,
              backgroundColor: Colors.deepOrange),
          Categoria(
              nome: 'High G',
              borderColor: Colors.black,
              backgroundColor: guaraniaColor)
        ], feitoPor: 'Marcel Viana', nome: 'Valsa');
    dedilhados.add(d17);

    var d18 = Dedilhado(
        padrao: '(P M A) I (M A) I',
        videoId: '8GuoBZIHxCw',
        divisoes: [
          Divisao(
              polegarColor: true,
              indicadorColor: false,
              medioColor: true,
              anelarColor: true),
          Divisao(
              polegarColor: false,
              indicadorColor: true,
              medioColor: false,
              anelarColor: false),
          Divisao(
              polegarColor: false,
              indicadorColor: false,
              medioColor: true,
              anelarColor: true),
          Divisao(
              polegarColor: false,
              indicadorColor: true,
              medioColor: false,
              anelarColor: false),
        ],
        musicas: [Musica(nome: 'Imagine', autor: 'John lennon')],
        categorias: [
          Categoria(
              nome: 'Low G',
              borderColor: Colors.black,
              backgroundColor: Colors.deepOrange),
          Categoria(
              nome: 'High G',
              borderColor: Colors.black,
              backgroundColor: guaraniaColor)
        ], feitoPor: 'Marcel Viana', nome: 'Balada');
    dedilhados.add(d18);

    var d19 = Dedilhado(
        padrao: '(P M A) (M A) I P (I M A) T (I M A) P (I M A)',
        videoId: '8GuoBZIHxCw',
        divisoes: [
          Divisao(
              polegarColor: true,
              indicadorColor: false,
              medioColor: true,
              anelarColor: true),
          Divisao(
              polegarColor: false,
              indicadorColor: false,
              medioColor: true,
              anelarColor: true),
          Divisao(
              polegarColor: false,
              indicadorColor: true,
              medioColor: false,
              anelarColor: false),
          Divisao(
              polegarColor: true,
              indicadorColor: false,
              medioColor: false,
              anelarColor: false),
          Divisao(
              polegarColor: false,
              indicadorColor: true,
              medioColor: true,
              anelarColor: true),
          Divisao(
              polegarColor: true,
              indicadorColor: true,
              medioColor: true,
              anelarColor: true),
          Divisao(
              polegarColor: false,
              indicadorColor: true,
              medioColor: true,
              anelarColor: true),
          Divisao(
              polegarColor: true,
              indicadorColor: false,
              medioColor: false,
              anelarColor: false),
          Divisao(
              polegarColor: false,
              indicadorColor: true,
              medioColor: true,
              anelarColor: true),
        ],
        musicas: [
          Musica(nome: "Eu e você sempre", autor: "Jorge Aragão"),
          Musica(nome: "Garota de Ipanema", autor: "Vinicius vivas"),
        ], categorias: [
          Categoria(
             nome: 'Low G',
             borderColor: Colors.black,
             backgroundColor: Colors.deepOrange),
          Categoria(
             nome: 'High G',
             borderColor: Colors.black,
             backgroundColor: guaraniaColor)
        ], feitoPor: 'Marcel Viana', nome: 'Samba/bossa nova');
    dedilhados.add(d19);
    return dedilhados;
  }
}
