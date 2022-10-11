
List<String> getCampoHarmonicoDe(String de){

  var campoC = ['C','Dm', 'Em', 'F', 'G', 'Am','B°'];
  var campoCsus = ['C#/Db', 'D#m/Ebm', 'Fm', 'F#/Gb', 'G#/Ab', 'A#m/Bbm', 'C°'];
  var campoMenorC = ['Cm', 'D°', 'D#/Eb', 'Fm', 'Gm', 'G#/Ab','A#/Bb'];
  var campoMenorCsus = ['C#m/Dbm', 'D#°/Eb°', 'E', 'F#m/Gbm', 'G#m/Abm', 'A', 'B'];
  var campoD = ['D', 'Em', 'F#m/Gbm', 'G', 'A', 'Bm', 'C#°/Db°'];
  var campoMenorD = ['Dm', 'E°', 'F', 'Gm', 'Am', 'A#/Bb', 'C'];
  var campoDsus = ['D#/Eb', 'Fm', 'Gm', 'G#/Ab', 'A#/Bb', 'Cm', 'D°'];
  var campoMenorDsus = ['D#m/Ebm', 'F°', 'F#/Gb', 'G#m/Abm', 'A#m/Bbm', 'Bm', 'C#/Db'];
  var campoE = ['E', 'F#m/Gbm', 'G#m/Abm', 'A', 'B', 'C#m/Dbm', 'D#°/Eb°'];
  var campoMenorE = ['Em', 'F#°/Gb°', 'G', 'Am', 'Bm', 'C', 'D'];
  var campoF = ['F', 'Gm', 'Am', 'A#/Bb', 'C', 'Dm', 'E°'];
  var campoMenorF = ['Fm', 'G°', 'G#/Ab', 'A#m/Bbm', 'Cm', 'C#/Db', 'D#/Eb'];
  var campoFsus = ['F#/Gb', 'G#m/Abm', 'A#m/Bbm', 'B', 'C#/Db', 'D#m/Ebm', 'F°'];
  var campoMenorFsus = ['F#m/Gbm', 'G#°/Ab°', 'A', 'Bm', 'C#m/Dbm', 'D', 'E'];
  var campoG = ['G', 'Am', 'Bm', 'C', 'D', 'Em', 'F#°/Gb°'];
  var campoMenorG = ['Gm', 'A°', 'A#/Bb', 'Cm', 'Dm', 'D#/Eb', 'F'];
  var campoGsus = ['G#/Ab', 'A#m/Bbm', 'Cm', 'C#/Db', 'D#/Eb', 'Fm', 'G°'];
  var campoMenorGsus = ['G#m/Abm', 'A#°/Bb°', 'B', 'C#m/Dbm', 'D#m/Ebm', 'E', 'F#/Gb'];
  var campoA = ['A', 'Bm', 'C#m/Dbm', 'D', 'E', 'F#m/Gbm', 'G#°/Ab°'];
  var campoMenorA = ['Am', 'B°', 'C', 'Dm', 'Em', 'F', 'G'];
  var campoAsus = ['A#/Bb', 'Cm', 'Dm', 'D#/Eb', 'F', 'Gm', 'A°'];
  var campoMenorAsus = ['A#m/Bbm', 'C°', 'C#/Db', 'D#m/Ebm', 'Fm', 'F#/Gb', 'G#/Ab'];
  var campoB = ['B', 'C#m/Dbm', 'D#m/Ebm', 'E', 'F#/Gb', 'G#m/Abm', 'A#°/Bb°'];
  var campoMenorB = ['Bm', 'C#°/Db°', 'D', 'Em', 'F#m/Gbm', 'G', 'A'];

  switch(de){
    case 'C':{
      return campoC;
    }
    case 'Cm': {
      return campoMenorC;
    }
    case 'C#/Db':{
      return campoCsus;
    }
    case 'C#m/Dbm':{
      return campoMenorCsus;
    }
    case 'D':{
      return campoD;
    }
    case 'Dm':{
      return campoMenorD;
    }
    case 'D#/Eb':{
      return campoDsus;
    }
    case 'D#m/Ebm':{
      return campoMenorDsus;
    }
    case 'E':{
      return campoE;
    }
    case 'Em':{
      return campoMenorE;
    }
    case 'F':{
      return campoF;
    }
    case 'Fm':{
      return campoMenorF;
    }
    case 'F#/Gb':{
      return campoFsus;
    }
    case 'F#m/Gbm':{
      return campoMenorFsus;
    }
    case 'G':{
      return campoG;
    }
    case 'Gm':{
      return campoMenorG;
    }
    case 'G#/Ab':{
      return campoGsus;
    }
    case 'G#m/Abm':{
      return campoMenorGsus;
    }
    case 'A':{
      return campoA;
    }
    case 'Am': {
      return campoMenorA;
    }
    case 'A#/Bb':{
      return campoAsus;
    }
    case 'A#m/Bbm':{
      return campoMenorAsus;
    }
    case 'B':{
      return campoB;
    }
    case 'Bm':{
      return campoMenorB;
    }
    default:{
      return campoC;
    }
  }
}

String getNameFromCifra(String cifra){
  switch(cifra){
    case 'C':{
      return 'Dó';
    }
    case 'C#':{
      return 'Dó sustenido';
    }
    case 'D':{
      return 'Ré';
    }
    case 'D#':{
      return 'Ré sustenido';
    }
    case 'E':{
      return 'Mi';
    }
    case 'F':{
      return 'Fá';
    }
    case 'F#':{
      return 'Fá sustenido';
    }
    case 'G':{
      return 'Sol';
    }
    case 'G#':{
      return 'Sol sustenido';
    }
    case 'A':{
      return 'Lá';
    }
    case 'A#':{
      return 'Lá sustenido';
    }
    case 'B':{
      return 'Si';
    }
    default: {
      return 'Dó';
    }
  }
}

String nomeMaiorToMenor(String nome){
  if(nome.length > 2){
    var res = nome.split('/');
    var novoNome = '${res[0]}m/${res[1]}m';
    return novoNome;
  }else{
    return '${nome}m';
  }

}