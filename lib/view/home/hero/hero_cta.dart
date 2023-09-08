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
      height: Res.isDesktop(context) ? 450 : null,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: Res.isDesktop(context) ? 120 : 20),
      // color: kBlackShade,
      child: Res.isDesktop(context)
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
                      Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          CustomIconButton(
                            icon: FontAwesomeIcons.envelope,
                            onTap: () {
                              UrlLaunch.makeEmail(body: 'Hello, ', email: emailId, subject: 'Hello, I need Assistant');
                            },
                          ),
                          CustomIconButton(
                            icon: FontAwesomeIcons.twitter,
                            onTap: () {
                              UrlLaunch.makeEmail(body: 'Hello, ', email: emailId, subject: 'Hello, I need Assistant');
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: SizedBox(
                        height: 300,
                        width: 300,
                        child: ClipOval(
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://firebasestorage.googleapis.com/v0/b/om-portfolio-github-website.appspot.com/o/IMG_20190204_153830_688.jpg?alt=media&token=7087d3b8-b766-4544-b97e-c4cb2cb5cd31',
                              fit: BoxFit.cover,
                              progressIndicatorBuilder: (context, url, progress) => Center(
                                    child: CircularProgressIndicator(value: progress.progress),
                                  )),
                        ),
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
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        CustomIconButton(
                          icon: FontAwesomeIcons.envelope,
                          onTap: () {
                            UrlLaunch.makeEmail(body: 'Hello, ', email: emailId, subject: 'Hello, I need Assistant');
                          },
                        ),
                        CustomIconButton(
                          icon: FontAwesomeIcons.twitter,
                          onTap: () {
                            UrlLaunch.makeEmail(body: 'Hello, ', email: emailId, subject: 'Hello, I need Assistant');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: SizedBox(
                      height: 160,
                      width: 160,
                      child: ClipOval(
                        child: CachedNetworkImage(
                            imageUrl:
                                'https://firebasestorage.googleapis.com/v0/b/om-portfolio-github-website.appspot.com/o/IMG_20190204_153830_688.jpg?alt=media&token=7087d3b8-b766-4544-b97e-c4cb2cb5cd31',
                            fit: BoxFit.cover,
                            progressIndicatorBuilder: (context, url, progress) => Center(
                                  child: CircularProgressIndicator(value: progress.progress),
                                )),
                      ),
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
