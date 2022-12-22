import 'package:om_chauhan/all_imports.dart';
import 'dart:developer' as dev;

import 'package:om_chauhan/widgets/custom_divider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _homeKey = GlobalKey();
    final _aboutKey = GlobalKey();
    final _projectKey = GlobalKey();
    final _skillsKey = GlobalKey();
    final _topKey = GlobalKey();

    final GlobalKey<ScaffoldState> _drawerKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _drawerKey,
      backgroundColor: kWhite,
      drawer: Responsive.isDesktop(context)
          ? const SizedBox()
          : MobileDrawer(about: _aboutKey, project: _projectKey, skills: _skillsKey),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Responsive.isDesktop(context)
                  ? TopMenu(
                      key: _homeKey,
                      home: () {
                        Scrollable.ensureVisible(
                          _homeKey.currentState!.context,
                          duration: const Duration(seconds: 1),
                        );
                      },
                      about: () {
                        Scrollable.ensureVisible(
                          _aboutKey.currentState!.context,
                          duration: const Duration(seconds: 1),
                        );
                      },
                      project: () {
                        Scrollable.ensureVisible(
                          _projectKey.currentState!.context,
                          duration: const Duration(seconds: 1),
                        );
                      },
                      skills: () {
                        Scrollable.ensureVisible(
                          _skillsKey.currentState!.context,
                          duration: const Duration(seconds: 1),
                        );
                      },
                      blog: () {
                        dev.log('Launch Blog Website');
                        UrlLaunch.launchInBrowser(url: 'https://blog.om-chauhan.co.in/');
                      },
                    )
                  : MobileHeader(drawerKey: _drawerKey),
              HeroCta(key: _topKey),
              const CustomDivider(),
              About(key: _aboutKey),
              const CustomDivider(),
              Project(key: _projectKey),
              const CustomDivider(),
              Skills(key: _skillsKey),
              const CustomDivider(),
              Footer(
                clickToTop: () {
                  if (Responsive.isDesktop(context)) {
                    Scrollable.ensureVisible(
                      _homeKey.currentState!.context,
                      duration: const Duration(seconds: 1),
                    );
                  } else {
                    Scrollable.ensureVisible(
                      _topKey.currentState!.context,
                      duration: const Duration(seconds: 1),
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
