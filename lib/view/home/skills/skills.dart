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
      padding: EdgeInsets.symmetric(horizontal: Res.isDesktop(context) ? 120 : 20, vertical: Res.isDesktop(context) ? 50 : 20),
      child: Column(
        children: [
          TextBuilder(
            text: 'Skills',
            color: kBlack,
            fontWeight: FontWeight.w600,
            fontSize: 30,
          ),
          const SizedBox(height: 30.0),
          SizedBox(
            width: Res.isMobile(context) ? 300 : 500,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: Res.isMobile(context) ? 3 : 5,
                childAspectRatio: Res.isMobile(context) ? 1 / 1 : 1 / 1.1,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              itemCount: skill.skills.length,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
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
