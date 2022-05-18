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
      height: 450,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 120),
      color: kGreyShade,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 6,
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(20),
              child: SvgPicture.asset(
                'assets/icons/coding.svg',
                height: 200,
                width: 200,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextBuilder(
                    text: "About Me",
                    color: kWhite,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                  const SizedBox(height: 10.0),
                  TextBuilder(
                    text: about,
                    color: kWhite,
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    fontSize: 14,
                  ),
                  const SizedBox(height: 50.0),
                  Row(
                    children: [
                      CustomButton(
                        title: 'Linkedin',
                        icon: FontAwesomeIcons.linkedin,
                        onTap: () {},
                      ),
                      const SizedBox(width: 50.0),
                      CustomButton(
                        title: 'Resume',
                        icon: FontAwesomeIcons.download,
                        onTap: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
