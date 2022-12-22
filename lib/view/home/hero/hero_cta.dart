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
                        title: 'Email',
                        icon: FontAwesomeIcons.envelope,
                        onTap: () {
                          UrlLaunch.makeEmail(body: 'Hello, ', email: emailId, subject: 'Hello, I need Assistant');
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
                    child: const CircleAvatar(
                      backgroundColor: Colors.black12,
                      radius: 300,
                      backgroundImage: AssetImage(
                        'assets/images/my_pic.jpg',
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
                      title: 'Email',
                      icon: FontAwesomeIcons.envelope,
                      onTap: () {
                        UrlLaunch.makeEmail(body: 'Hello, ', email: emailId, subject: 'Hello, I need Assistant');
                      },
                    )
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(20),
                  child: const CircleAvatar(
                    backgroundColor: Colors.black12,
                    radius: 150,
                    backgroundImage: AssetImage(
                      'assets/images/my_pic.jpg',
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
