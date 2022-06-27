import 'package:om_chauhan/all_imports.dart';

class Skills extends StatefulWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  final skill = SkillsController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isDesktop(context) ? 120 : 20,
          vertical: Responsive.isDesktop(context) ? 50 : 20),
      color: kGreyShade,
      child: Column(
        children: [
          TextBuilder(
            text: 'Skills',
            color: kWhite,
            fontWeight: FontWeight.w500,
            fontSize: 30,
          ),
          const SizedBox(height: 30.0),
          SizedBox(
            width: Responsive.isMobile(context) ? 300 : 500,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: Responsive.isMobile(context) ? 2 : 5,
                childAspectRatio:
                    Responsive.isMobile(context) ? 1 / 1 : 1 / 1.1,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              itemCount: skill.skills.length,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (BuildContext context, int i) {
                return SkillsCard(
                  icons: skill.skills[i].icons,
                  title: skill.skills[i].title,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
