import 'package:om_chauhan/all_imports.dart';
import 'dart:developer' as dev;

class ProjectCard extends StatelessWidget {
  final ProjectModel? project;
  final bool? top;
  const ProjectCard({
    Key? key,
    this.top,
    this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 2, bottom: 2),
      child: Stack(
        children: [
          Container(
            width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: top == true ? Colors.white : Colors.greenAccent,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Card(
              color: top == true ? kGreyShade.withOpacity(0.8) : Colors.black,
              margin: EdgeInsets.zero,
              shadowColor: Colors.blue,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding:
                    EdgeInsets.all(Responsive.isDesktop(context) ? 25.0 : 15),
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextBuilder(
                        text: project!.title,
                        color: kWhite,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                      const SizedBox(height: 30.0),
                      TextBuilder(
                        text: project!.description,
                        color: kWhite,
                        height: 1.5,
                        maxLines: 5,
                        textOverflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 30.0),
                      Row(
                        mainAxisAlignment: project!.website.isNotEmpty
                            ? MainAxisAlignment.spaceBetween
                            : MainAxisAlignment.start,
                        children: [
                          if (project!.website.isNotEmpty)
                            CustomButton(
                              title: 'Website',
                              width: 120,
                              height: 38,
                              icon: FontAwesomeIcons.link,
                              onTap: () {
                                dev.log(
                                    'Website :${project!.website.toString()}');
                                UrlLaunch.launchInBrowser(
                                    url: project!.website);
                              },
                            ),
                          if (project!.website.isNotEmpty)
                            const SizedBox(width: 20.0),
                          if (project!.gitHub.isNotEmpty)
                            CustomButton(
                              title: 'GitHub',
                              width: 120,
                              height: 38,
                              icon: FontAwesomeIcons.github,
                              onTap: () {
                                dev.log(
                                    'Github: ${project!.gitHub.toString()}');
                                UrlLaunch.launchInBrowser(url: project!.gitHub);
                              },
                            ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 5,
            top: 10,
            child: RotationTransition(
              turns: AlwaysStoppedAnimation(40 / 360),
              alignment: Alignment.center,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: top == true ? Colors.green : Colors.transparent,
                    shape: BoxShape.circle),
                child: Center(
                  child: TextBuilder(
                    text: top == true ? 'Top' : '',
                    color: kWhite,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
