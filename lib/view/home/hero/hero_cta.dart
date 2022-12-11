import 'package:om_chauhan/all_imports.dart';

class HeroCta extends StatefulWidget {
  const HeroCta({
    Key? key,
  }) : super(key: key);

  @override
  State<HeroCta> createState() => _HeroCtaState();
}

class _HeroCtaState extends State<HeroCta> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: Responsive.isDesktop(context) ? 450 : null,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: Responsive.isDesktop(context) ? 120 : 20),
      // color: kBlackShade,
      child: Responsive.isDesktop(context)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextBuilder(
                        text: "Hello, I'm",
                        color: kBlack,
                        fontSize: 14,
                      ),
                      const SizedBox(height: 5.0),
                      TextBuilder(
                        text: name,
                        color: kBlack,
                        fontSize: 30,
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.w900,
                        latterSpacing: 1.5,
                      ),
                      const SizedBox(height: 5.0),
                      TextBuilder(
                        text: role,
                        color: kBlack,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        latterSpacing: 1.5,
                      ),
                      const SizedBox(height: 20.0),
                      CustomButton(
                        title: 'WhatsApp',
                        icon: FontAwesomeIcons.whatsapp,
                        onTap: () {
                          if (kDebugMode) {
                            print('WhatsApp Button Clicked');
                          }

                          UrlLaunch.launchInBrowser(url: whatsApp);
                        },
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.all(20),
                    child: Blob.fromID(
                      id: const ['20-9-80'],
                      size: 400,
                      styles: BlobStyles(
                        color: Colors.black12,
                        fillType: BlobFillType.fill,
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/programming.svg',
                        height: 200,
                        width: 200,
                      ),
                    ),
                  ),
                )
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextBuilder(
                      text: "Hello, I'm",
                      color: kBlack,
                      fontSize: 14,
                    ),
                    const SizedBox(height: 5.0),
                    TextBuilder(
                      text: name,
                      color: kBlack,
                      fontSize: 30,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w800,
                      latterSpacing: 1.5,
                    ),
                    const SizedBox(height: 5.0),
                    TextBuilder(
                      text: role,
                      color: kBlack,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      latterSpacing: 1.5,
                    ),
                    const SizedBox(height: 20.0),
                    CustomButton(
                      title: 'WhatsApp',
                      icon: FontAwesomeIcons.whatsapp,
                      onTap: () {
                        if (kDebugMode) {
                          print('WhatsApp Button Clicked');
                        }

                        UrlLaunch.launchInBrowser(url: whatsApp);
                      },
                    )
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(20),
                  child: Blob.fromID(
                    id: const ['20-9-80'],
                    size: Responsive.isTablet(context) ? 400 : 300,
                    styles: BlobStyles(
                      color: kBlack,
                      fillType: BlobFillType.fill,
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/programming.svg',
                      height: 200,
                      width: 200,
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
