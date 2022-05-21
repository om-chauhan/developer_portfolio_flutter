import 'package:om_chauhan/all_imports.dart';

class ProjectCard extends StatelessWidget {
  final String? title, description, website, github;

  const ProjectCard({
    Key? key,
    this.title,
    this.description,
    this.website,
    this.github,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kGreyShade,
      margin: EdgeInsets.zero,
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: EdgeInsets.all(Responsive.isDesktop(context) ? 25.0 : 15),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextBuilder(
                text: title,
                color: kWhite,
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
                // color: Colors.green,
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
    );
  }
}
