import 'package:om_chauhan/all_imports.dart';

class ProjectCard extends StatelessWidget {
  final String? title, description, website, github;

  final bool? top;
  const ProjectCard({
    Key? key,
    this.title,
    this.description,
    this.website,
    this.github,
    this.top,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 2, bottom: 2),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: top == true ? Colors.white : Colors.greenAccent,
                    offset: Offset(2, 2)),
              ],
            ),
            child: Card(
              color: top == true ? kGreyShade.withOpacity(0.8) : Colors.black,
              margin: EdgeInsets.zero,
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding:
                    EdgeInsets.all(Responsive.isDesktop(context) ? 25.0 : 15),
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextBuilder(
                        text: title,
                        color: kWhite,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                      const SizedBox(height: 30.0),
                      TextBuilder(
                        text: description,
                        color: kWhite,
                        height: 1.5,
                        maxLines: 3,
                        textOverflow: TextOverflow.ellipsis,
                      ),
                      Spacer(),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomButton(
                              title: 'Webiste',
                              width: 120,
                              height: 38,
                              icon: FontAwesomeIcons.link,
                              onTap: () {
                                print('Webiste Button Clicked');
                                UrlLaunch.launchInBrowser(url: website!);
                              },
                            ),
                            const SizedBox(width: 20.0),
                            CustomButton(
                              title: 'GitHub',
                              width: 120,
                              height: 38,
                              icon: FontAwesomeIcons.github,
                              onTap: () {
                                print('GitHub Button Clicked');

                                UrlLaunch.launchInBrowser(url: github!);
                              },
                            ),
                          ],
                        ),
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
