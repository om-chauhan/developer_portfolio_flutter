import 'package:om_chauhan/all_imports.dart';

class Footer extends StatefulWidget {
  final void Function()? clickToTop;
  const Footer({
    Key? key,
    this.clickToTop,
  }) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      // height: 600,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isDesktop(context) ? 120 : 20, vertical: Responsive.isDesktop(context) ? 50 : 20),
      color: const Color(0xff5429CF),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 50, width: 50),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  if (kDebugMode) {
                    print('LinkedinIn Button Clicked');
                  }

                  UrlLaunch.launchInBrowser(url: linkedin);
                },
                icon: const FaIcon(
                  FontAwesomeIcons.linkedinIn,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  if (kDebugMode) {
                    print('Twitter Button Clicked');
                  }

                  UrlLaunch.launchInBrowser(url: twitter);
                },
                icon: const FaIcon(
                  FontAwesomeIcons.twitter,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  if (kDebugMode) {
                    print('Email Button Clicked');
                  }
                  UrlLaunch.makeEmail(email: emailId, subject: '', body: '');
                },
                icon: const FaIcon(
                  FontAwesomeIcons.google,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          InkWell(
            onTap: widget.clickToTop,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xff4220A3),
              ),
              child: const Icon(
                Icons.expand_less,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
