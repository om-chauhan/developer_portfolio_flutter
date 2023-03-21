import 'package:om_chauhan/all_imports.dart';

class UrlLaunch {
  static Future makePhoneCall({String? phoneNumber}) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  static Future makeEmail({String? email, String? subject, String? body}) async {
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
    final Uri url0 = Uri.parse(url!);
    if (await canLaunchUrl(url0)) {
      await launchUrl(url0,
          mode: LaunchMode.externalApplication,
          webViewConfiguration: const WebViewConfiguration(
            enableJavaScript: true,
          ));
    } else {
      if (kDebugMode) {
        print('Error ${url0.toString()}');
      }
      throw 'Could not launch $url0';
    }
  }
}
