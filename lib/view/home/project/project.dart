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
      // height: 600,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 120, vertical: 50),
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
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 2.5 / 1.7,
              mainAxisSpacing: 35,
              crossAxisSpacing: 30,
            ),
            itemCount: project.projectList.length,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemBuilder: (BuildContext context, int i) {
              return Card(
                color: kGreyShade,
                margin: EdgeInsets.zero,
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextBuilder(
                        text: project.projectList[i].title,
                        color: kWhite,
                      ),
                      const SizedBox(height: 30.0),
                      TextBuilder(
                        text: project.projectList[i].description,
                        color: kWhite,
                        height: 1.5,
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomButton(
                            title: 'Webiste',
                            width: 130,
                            height: 38,
                            icon: FontAwesomeIcons.link,
                            onTap: () {},
                          ),
                          CustomButton(
                            title: 'GitHub',
                            width: 130,
                            height: 38,
                            icon: FontAwesomeIcons.github,
                            onTap: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
