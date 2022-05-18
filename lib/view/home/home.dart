import 'package:om_chauhan/all_imports.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _homeKey = new GlobalKey();
    final _aboutKey = new GlobalKey();
    final _projectKey = new GlobalKey();

    // final _whatIDoKey = new GlobalKey();
    ScrollController _scroll = ScrollController();
    return Scaffold(
      backgroundColor: kGreyShade,
      body: SingleChildScrollView(
        controller: _scroll,
        child: Column(
          children: [
            // RadioListTile<ThemeMode>(
            //   title: const Text('Light Mode'),
            //   groupValue: themeChanger.getTheme,
            //   value: ThemeMode.light,
            //   onChanged: themeChanger.setTheme,
            // ),
            // RadioListTile<ThemeMode>(
            //   title: const Text('Dark Mode'),
            //   groupValue: themeChanger.getTheme,
            //   value: ThemeMode.dark,
            //   onChanged: themeChanger.setTheme,
            // ),

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
              whatido: () {},
              skills: () {},
            ),
            HeroCta(),
            About(key: _aboutKey),
            Project(key: _projectKey),
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
