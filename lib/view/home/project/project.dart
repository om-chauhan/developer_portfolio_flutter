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
    project.projectList.sort((a, b) => b.top.toString().compareTo(a.top.toString()));
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.isDesktop(context) ? 120 : 20,
        vertical: Responsive.isDesktop(context) ? 50 : 20,
      ),
      color: kBlackShade,
      child: Column(
        children: [
          TextBuilder(
            text: 'Project',
            color: kWhite,
            fontWeight: FontWeight.w500,
            fontSize: 30,
          ),
          const SizedBox(height: 30.0),
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            direction: Axis.horizontal,
            runSpacing: 50,
            spacing: 50,
            children: List.generate(
              project.projectList.length,
              (i) => ProjectCard(
                onTap: () {
                  if (Responsive.isMobile(context)) {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => ProjectDetails(data: project.projectList[i])));
                  } else {
                    showDetails(context: context, child: ProjectDetails(data: project.projectList[i]));
                  }
                },
                project: project.projectList[i],
                top: project.projectList[i].top,
              ),
            ),
          ),
          // GridView.builder(
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: Responsive.isDesktop(context)
          //         ? 3
          //         : Responsive.isTablet(context)
          //             ? 2
          //             : 1,
          //     childAspectRatio: 1 / 0.6,
          //     mainAxisSpacing: Responsive.isDesktop(context) ? 35 : 20,
          //     crossAxisSpacing: Responsive.isDesktop(context) ? 30 : 20,
          //   ),
          //   itemCount: project.projectList.length,
          //   shrinkWrap: true,
          //   physics: BouncingScrollPhysics(),
          //   itemBuilder: (BuildContext context, int i) {
          //     project.projectList
          //         .sort((a, b) => b.top.toString().compareTo(a.top.toString()));
          //     return ProjectCard(
          //       title: project.projectList[i].title,
          //       description: project.projectList[i].description,
          //       website: project.projectList[i].website,
          //       github: project.projectList[i].gitHub,
          //       top: project.projectList[i].top,
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
