import 'package:flutter/gestures.dart';
import 'package:om_chauhan/all_imports.dart';

class AppBanners extends StatelessWidget {
  const AppBanners({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      color: kWhite,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: SizedBox(
        height: 80,
        width: !Responsive.isMobile(context) ? 400 : double.infinity,
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: const Color(0xffE0FFD9),
                child: const Icon(
                  Icons.android,
                  color: Color(0xff1C8302),
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextBuilder(
                      text: 'Message',
                      color: kBlack,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(height: 5),
                    RichText(
                      text: TextSpan(
                        text: 'For better experience ',
                        style: TextStyle(
                          color: kBlack.withOpacity(0.6),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                        children: [
                          TextSpan(
                            text: 'Download app',
                            style: const TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                UrlLaunch.launchInBrowser(url: apkDownloadLink);
                                Navigator.pop(context);
                              },
                          ),
                          const TextSpan(text: ' or joined with Desktop/PC'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: Icon(
                    Icons.close,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
