import 'package:url_launcher/url_launcher.dart';

class UrlLaunch {
  static Future makePhoneCall({String? phoneNumber}) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  static Future makeEmail(
      {String? email, String? subject, String? body}) async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: email,
      query: 'subject=$subject&body=$body',
    );

    if (await canLaunchUrl(params)) {
      await launchUrl(params);
    } else {
      throw 'Could not launch ${params.toString()}';
    }
  }

  static Future launchInBrowser({String? url}) async {
    final Uri _url = Uri.parse(url!);
    if (await canLaunchUrl(_url)) {
      await launchUrl(_url,
          mode: LaunchMode.externalApplication,
          webViewConfiguration: WebViewConfiguration(
            enableJavaScript: true,
          ));
    } else {
      print('Error ${_url.toString()}');
      throw 'Could not launch $_url';
    }
  }
}
