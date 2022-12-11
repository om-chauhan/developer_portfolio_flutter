import 'package:om_chauhan/all_imports.dart';

class ProjectCard extends StatelessWidget {
  final Function() onTap;
  final ProjectModel? project;
  final bool? top;
  const ProjectCard({
    Key? key,
    this.top,
    this.project,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 2, bottom: 2),
      child: Stack(
        children: [
          SizedBox(
            width: 500,
            child: Card(
              color: kWhite,
              margin: EdgeInsets.zero,
              elevation: 5,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.all(Responsive.isDesktop(context) ? 25.0 : 15),
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextBuilder(
                        text: project!.title,
                        color: kBlack,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                      const SizedBox(height: 30.0),
                      TextBuilder(
                        text: project!.description,
                        color: kBlack,
                        height: 1.5,
                        maxLines: 5,
                        textOverflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 30.0),
                      CustomButton(
                        title: 'More',
                        width: 120,
                        height: 38,
                        icon: FontAwesomeIcons.link,
                        onTap: onTap,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 5,
            top: 10,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(color: top == true ? kBlack : Colors.transparent, shape: BoxShape.circle),
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
        ],
      ),
    );
  }
}
