import 'package:om_chauhan/all_imports.dart';

class About extends StatefulWidget {
  const About({
    Key? key,
  }) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: Res.isDesktop(context) ? 450 : null,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: Res.isDesktop(context) ? 120 : 20),
      child: Res.isDesktop(context)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(20),
                    child: SvgPicture.asset(
                      'assets/icons/coding.svg',
                      height: 200,
                      width: 200,
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextBuilder(
                        text: "About Me",
                        color: kBlack,
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                      ),
                      const SizedBox(height: 10.0),
                      TextBuilder(
                        text: about,
                        color: kBlack,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        fontSize: 14,
                      ),
                      const SizedBox(height: 50.0),
                      CustomIconButton(
                        icon: FontAwesomeIcons.linkedinIn,
                        onTap: () {
                          UrlLaunch.launchInBrowser(url: linkedin);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(20),
                  child: SvgPicture.asset(
                    'assets/icons/coding.svg',
                    height: 200,
                    width: 200,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextBuilder(
                      text: "About Me",
                      color: kBlack,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                    const SizedBox(height: 10.0),
                    TextBuilder(
                      text: about,
                      color: kBlack,
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                      fontSize: 14,
                    ),
                    const SizedBox(height: 50.0),
                    CustomIconButton(
                      icon: FontAwesomeIcons.linkedinIn,
                      onTap: () {
                        UrlLaunch.launchInBrowser(url: linkedin);
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
              ],
            ),
    );
  }
}
