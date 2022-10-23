import 'package:url_launcher/url_launcher.dart';

launchURL(String url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchURL(url);
  } else {
    throw 'Could not launch $url';
  }
}
