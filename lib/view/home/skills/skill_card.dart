import 'package:om_chauhan/all_imports.dart';

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
        color: kWhite,
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: _current ? const Color(0xff5429CF) : Colors.transparent,
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
