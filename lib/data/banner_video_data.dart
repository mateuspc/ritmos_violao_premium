
import 'package:ritmos_de_violao_premium/models/banner_video.dart';

class BannerVideoData {

  static List<BannerVideo> getBannersVideosCanal (){
    List<BannerVideo> bannerVideoList = [];
    BannerVideo b1 = BannerVideo(link: 'assets/canal/1b.webp', idVideo: 'zWf9_-bcQaI');
    bannerVideoList.add(b1);
    BannerVideo b2 = BannerVideo(link: 'assets/canal/2b.webp', idVideo: 'J6WeKDu1NTU');
    bannerVideoList.add(b2);
    BannerVideo b3 = BannerVideo(link: 'assets/canal/3b.jpeg', idVideo: '5VDWES76hqc');
    bannerVideoList.add(b3);
    BannerVideo b4 = BannerVideo(link: 'assets/canal/4b.webp', idVideo: '3zPPF6Zo4eM');
    bannerVideoList.add(b4);
    BannerVideo b5 = BannerVideo(link: 'assets/canal/5b.jpeg', idVideo: 'P5t5yJrGwLI');
    bannerVideoList.add(b5);
    BannerVideo b6 = BannerVideo(link: 'assets/canal/6b.jpeg', idVideo: 'agrjSXJRMnw');
    bannerVideoList.add(b6);
    BannerVideo b7 = BannerVideo(link: 'assets/canal/7b.webp', idVideo: '6-49l3GGros');
    bannerVideoList.add(b7);
    BannerVideo b8 = BannerVideo(link: 'assets/canal/8b.jpeg', idVideo: 'J-wiJvZRhw4');
    bannerVideoList.add(b8);
    BannerVideo b9 = BannerVideo(link: 'assets/canal/9b.webp', idVideo: 'jvrMZCqd9Ew');
    bannerVideoList.add(b9);
    BannerVideo b10 = BannerVideo(link: 'assets/canal/10b.webp', idVideo: 'u0OIUKlaFYQ');
    bannerVideoList.add(b10);
    return bannerVideoList;
  }
}