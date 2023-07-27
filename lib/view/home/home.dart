import 'package:om_chauhan/all_imports.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();
  late ProjectController project;
  final homeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final projectKey = GlobalKey();
  final skillsKey = GlobalKey();
  final topKey = GlobalKey();
  @override
  void initState() {
    super.initState();
    project = ProjectController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      backgroundColor: kWhite,
      drawer: Responsive.isDesktop(context) ? const SizedBox() : MobileDrawer(about: aboutKey, project: projectKey, skills: skillsKey),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Responsive.isDesktop(context)
                  ? TopMenu(
                      key: homeKey,
                      home: () {
                        Scrollable.ensureVisible(
                          homeKey.currentState!.context,
                          duration: const Duration(seconds: 1),
                        );
                      },
                      about: () {
                        Scrollable.ensureVisible(
                          aboutKey.currentState!.context,
                          duration: const Duration(seconds: 1),
                        );
                      },
                      project: () {
                        Scrollable.ensureVisible(
                          projectKey.currentState!.context,
                          duration: const Duration(seconds: 1),
                        );
                      },
                      skills: () {
                        Scrollable.ensureVisible(
                          skillsKey.currentState!.context,
                          duration: const Duration(seconds: 1),
                        );
                      },
                      blog: () {
                        UrlLaunch.launchInBrowser(url: 'https://om-chauhan.hashnode.dev/');
                      },
                    )
                  : MobileHeader(drawerKey: drawerKey),
              HeroCta(key: topKey),
              const CustomDivider(),
              About(key: aboutKey),
              const CustomDivider(),
              Project(key: projectKey, project: project),
              const CustomDivider(),
              Skills(key: skillsKey),
              const CustomDivider(),
              Footer(
                clickToTop: () {
                  if (Responsive.isDesktop(context)) {
                    Scrollable.ensureVisible(
                      homeKey.currentState!.context,
                      duration: const Duration(seconds: 1),
                    );
                  } else {
                    Scrollable.ensureVisible(
                      topKey.currentState!.context,
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
