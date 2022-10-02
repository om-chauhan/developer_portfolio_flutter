import 'package:om_chauhan/all_imports.dart';

class MobileDrawer extends StatelessWidget {
  final GlobalKey? about, project, skills;
  const MobileDrawer({
    Key? key,
    this.about,
    this.project,
    this.skills,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kGreyShade,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            onTap: () {
              Scrollable.ensureVisible(
                about!.currentState!.context,
                duration: Duration(seconds: 1),
              );
            },
            title: TopMenuItem(
              title: 'About Me',
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10.0),
          ListTile(
            onTap: () {
              Scrollable.ensureVisible(
                project!.currentState!.context,
                duration: Duration(seconds: 1),
              );
            },
            title: TopMenuItem(
              title: 'Projects',
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10.0),
          ListTile(
            onTap: () {
              Scrollable.ensureVisible(
                skills!.currentState!.context,
                duration: Duration(seconds: 1),
              );
            },
            title: TopMenuItem(
              title: 'Skills',
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
