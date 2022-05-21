import 'package:om_chauhan/all_imports.dart';

class Project extends StatefulWidget {
  const Project({
    Key? key,
  }) : super(key: key);

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  final project = ProjectController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isDesktop(context) ? 120 : 20,
          vertical: Responsive.isDesktop(context) ? 50 : 20),
      color: kBlackShade,
      child: Column(
        children: [
          TextBuilder(
            text: 'Project',
            color: kWhite,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          const SizedBox(height: 30.0),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: Responsive.isDesktop(context)
                  ? 3
                  : Responsive.isTablet(context)
                      ? 2
                      : 1,
              childAspectRatio: Responsive.isDesktop(context)
                  ? 2.5 / 1.7
                  : Responsive.isTablet(context)
                      ? 1 / 0.5
                      : 1 / 0.55,
              mainAxisSpacing: Responsive.isDesktop(context) ? 35 : 20,
              crossAxisSpacing: Responsive.isDesktop(context) ? 30 : 20,
            ),
            itemCount: project.projectList.length,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemBuilder: (BuildContext context, int i) {
              return ProjectCard(
                title: project.projectList[i].title,
                description: project.projectList[i].description,
                website: project.projectList[i].website,
                github: project.projectList[i].gitHub,
              );
            },
          ),
        ],
      ),
    );
  }
}
