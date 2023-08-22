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
                const Expanded(
                  flex: 6,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: CircleAvatar(
                        backgroundColor: Colors.black12,
                        radius: 150,
                        backgroundImage: NetworkImage(
                          "https://firebasestorage.googleapis.com/v0/b/om-portfolio-github-website.appspot.com/o/profile.jpg?alt=media&token=dfa09671-10cc-4640-845a-b63a9912ee01",
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
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: CircleAvatar(
                      backgroundColor: Colors.black12,
                      radius: 100,
                      backgroundImage: NetworkImage(
                        "https://firebasestorage.googleapis.com/v0/b/om-portfolio-github-website.appspot.com/o/profile.jpg?alt=media&token=dfa09671-10cc-4640-845a-b63a9912ee01",
                      ),
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
