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
      // height: 600,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 120, vertical: 50),
      color: kGreyShade,
      child: Column(
        children: [
          TextBuilder(
            text: 'Skills',
            color: kWhite,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          const SizedBox(height: 30.0),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.35,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                childAspectRatio: 1 / 1.1,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
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

class SkillsCard extends StatefulWidget {
  final String? icons, title;

  const SkillsCard({
    Key? key,
    required this.icons,
    required this.title,
  }) : super(key: key);

  @override
  State<SkillsCard> createState() => _SkillsCardState();
}

class _SkillsCardState extends State<SkillsCard> {
  bool _current = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (enter) {
        setState(() {
          _current = true;
        });
      },
      onExit: (exit) {
        setState(() {
          _current = false;
        });
      },
      child: Card(
        color: Color(0xff121214),
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: _current ? Color(0xff5429CF) : Colors.transparent,
                style: BorderStyle.solid,
                width: 5,
              ),
            ),
          ),
          child: Image.asset(
            widget.icons!,
            height: 40,
            width: 40,
          ),
        ),
      ),
    );
  }
}
