import 'package:om_chauhan/all_imports.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _homeKey = new GlobalKey();
    final _aboutKey = new GlobalKey();
    final _projectKey = new GlobalKey();
    final _skillsKey = new GlobalKey();
    final _topKey = new GlobalKey();
    ScrollController _scroll = ScrollController();

    final GlobalKey<ScaffoldState> _drawerKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _drawerKey,
      backgroundColor: kGreyShade,
      drawer: Responsive.isDesktop(context)
          ? Container()
          : MobileDrawer(
              about: _aboutKey, project: _projectKey, skills: _skillsKey),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scroll,
          child: Column(
            children: [
              Responsive.isDesktop(context)
                  ? TopMenu(
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
                    )
                  : MobileHeader(drawerKey: _drawerKey),
              HeroCta(key: _topKey),
              About(key: _aboutKey),
              Project(key: _projectKey),
              Skills(key: _skillsKey),
              Footer(
                clickToTop: () {
                  if (Responsive.isDesktop(context)) {
                    Scrollable.ensureVisible(
                      _homeKey.currentState!.context,
                      duration: Duration(seconds: 1),
                    );
                  } else {
                    Scrollable.ensureVisible(
                      _topKey.currentState!.context,
                      duration: Duration(seconds: 1),
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
