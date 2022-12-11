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
        vertical: Responsive.isDesktop(context) ? 50 : 20,
      ),
      child: Column(
        children: [
          TextBuilder(
            text: 'Project',
            color: kBlack,
            fontWeight: FontWeight.w600,
            fontSize: 30,
          ),
          const SizedBox(height: 30.0),
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            direction: Axis.horizontal,
            runSpacing: 50,
            spacing: 50,
            children: [
              for (int i = 0; i < project.projectList.length; i++)
                ProjectCard(
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
                )
            ],
          ),
        ],
      ),
    );
  }
}
