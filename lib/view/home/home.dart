import 'package:om_chauhan/all_imports.dart';
import 'package:om_chauhan/view/home/skills/skills.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _homeKey = new GlobalKey();
    final _aboutKey = new GlobalKey();
    final _projectKey = new GlobalKey();
    final _skillsKey = new GlobalKey();
    ScrollController _scroll = ScrollController();
    return Scaffold(
      backgroundColor: kGreyShade,
      body: SingleChildScrollView(
        controller: _scroll,
        child: Column(
          children: [
            TopMenu(
              key: _homeKey,
              home: () {
                Scrollable.ensureVisible(
                  _homeKey.currentState!.context,
                  duration: Duration(seconds: 1),
                );
              },
              about: () {
                Scrollable.ensureVisible(
                  _aboutKey.currentState!.context,
                  duration: Duration(seconds: 1),
                );
              },
              project: () {
                Scrollable.ensureVisible(
                  _projectKey.currentState!.context,
                  duration: Duration(seconds: 1),
                );
              },
              skills: () {
                Scrollable.ensureVisible(
                  _skillsKey.currentState!.context,
                  duration: Duration(seconds: 1),
                );
              },
            ),
            HeroCta(),
            About(key: _aboutKey),
            Project(key: _projectKey),
            Skills(key: _skillsKey),
            Footer(
              clikToTop: () {
                Scrollable.ensureVisible(
                  _homeKey.currentState!.context,
                  duration: Duration(seconds: 1),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
