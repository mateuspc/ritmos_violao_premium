import 'package:flutter/material.dart';
import 'package:ritmos_de_violao_premium/data/banner_video_data.dart';
import 'package:ritmos_de_violao_premium/models/banner_video.dart';
import 'package:ritmos_de_violao_premium/widgets/custom_toolbar.dart';
import 'package:url_launcher/url_launcher.dart';

class PageDestaquesCanal extends StatefulWidget {
  const PageDestaquesCanal({Key? key}) : super(key: key);

  @override
  State<PageDestaquesCanal> createState() => _PageDestaquesCanalState();
}

class _PageDestaquesCanalState extends State<PageDestaquesCanal> {

  List<BannerVideo> bannerVideoList = [];

  @override
  void initState() {
    super.initState();
    bannerVideoList = BannerVideoData.getBannersVideosCanal();
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomToolbarNotSliver(
          context: context,
          colorLeadingIcon: Colors.teal,
          backgroundColor: Colors.white,
          onTapLeading: () {
            Navigator.pop(context);
          },
          title: "Destaques do canal",
          onActionClicked: () {}),
      body: ListView.separated(
        itemCount: bannerVideoList.length,
        itemBuilder: (BuildContext context, int index) {
          BannerVideo bannerVideo = bannerVideoList[index];

          return GestureDetector(
            onTap: (){
              openUrlExternalApplication('https://youtu.be/${bannerVideo.idVideo}');
            },
            child: Stack(
              children: [
                Container(
                  width: size.width,
                  child: Card(
                    child: Container(
                      height: 225,
                      child: Image.asset(
                        bannerVideo.link,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }, separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 5,);
      },

      ),
    );
  }

  void openUrlExternalApplication(String url) async {
    try {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } catch (e) {
    }
  }
}
