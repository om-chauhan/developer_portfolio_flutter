import 'package:om_chauhan/all_imports.dart';

class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  ProjectController project = ProjectController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        horizontal: Res.isDesktop(context) ? 120 : 20,
        vertical: Res.isDesktop(context) ? 50 : 20,
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
          ListView.builder(
            itemCount: project.projectList.length,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (BuildContext context, int i) {
              return ProjectCard(project: project.projectList[i]);
            },
          )
        ],
      ),
    );
  }
}
