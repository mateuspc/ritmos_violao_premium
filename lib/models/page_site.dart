
class PageSiteInfo{
  String titlePage;
  String urlSite;

  PageSiteInfo({required this.titlePage,required this.urlSite});

  PageSiteInfo.politicaPrivacidade({
    this.titlePage = 'Políticas de privacidade',
    this.urlSite = 'https://sites.google.com/view/politicaprivacidadedevfullapps/'});

  PageSiteInfo.termosUso({
    this.titlePage = 'Termos de uso',
    this.urlSite = 'https://sites.google.com/view/aprenderritmosviolaotermos/'
  });
  Map<String, dynamic> toMap(){
    return {
      'pageSiteInfo' : {
          'titlePage' : this.titlePage,
          'urlSite' : this.urlSite
      }
    };
  }

  PageSiteInfo fromMap(Map<String, dynamic> map){
    this.titlePage = map['pageSiteInfo']['titlePage'];
    this.urlSite = map['pageSiteInfo']['urlSite'];
    return PageSiteInfo(titlePage: this.titlePage, urlSite: this.urlSite);
  }

}