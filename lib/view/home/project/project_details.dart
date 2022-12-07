import 'package:om_chauhan/all_imports.dart';

class ProjectDetails extends StatelessWidget {
  final ProjectModel data;
  const ProjectDetails({Key? key, required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhite,
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextBuilder(
                    text: data.title,
                    color: kBlack,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: kBlack,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.close,
                        color: kWhite,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20.0),
              TextBuilder(
                text: data.description,
                color: kBlack,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: data.website.isNotEmpty ? MainAxisAlignment.spaceBetween : MainAxisAlignment.start,
                children: [
                  if (data.website.isNotEmpty)
                    CustomButton(
                      title: 'Website',
                      width: 120,
                      height: 38,
                      icon: FontAwesomeIcons.link,
                      onTap: () {
                        UrlLaunch.launchInBrowser(url: data.website);
                      },
                    ),
                  if (data.website.isNotEmpty) const SizedBox(width: 20.0),
                  if (data.gitHub.isNotEmpty)
                    CustomButton(
                      title: 'GitHub',
                      width: 120,
                      height: 38,
                      icon: FontAwesomeIcons.github,
                      onTap: () {
                        UrlLaunch.launchInBrowser(url: data.gitHub);
                      },
                    ),
                ],
              ),
              const SizedBox(height: 20.0),
              TextBuilder(
                text: 'Demo',
                color: kBlack,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(height: 20.0),
              data.demo.isNotEmpty
                  ? GestureDetector(
                      onTap: () {
                        UrlLaunch.launchInBrowser(url: data.demo);
                      },
                      child: const TextBuilder(
                        text: 'Click Here',
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  : TextBuilder(
                      text: 'No data available',
                      color: kBlack,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
              const SizedBox(height: 20.0),
              TextBuilder(
                text: 'Screenshot',
                color: kBlack,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                height: 300,
                child: data.screenshot.isNotEmpty
                    ? ListView.builder(
                        itemCount: data.screenshot.length,
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int i) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: GestureDetector(
                              onTap: () {
                                showImagePreview(context: context, image: data.screenshot[i]);
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: CachedNetworkImage(
                                  imageUrl: data.screenshot[i],
                                  fit: BoxFit.cover,
                                  height: 600,
                                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                                      Center(child: CircularProgressIndicator(value: downloadProgress.progress)),
                                  errorWidget: (context, url, error) => const Icon(Icons.error),
                                ),
                              ),
                            ),
                          );
                        },
                      )
                    : TextBuilder(
                        text: 'No data available',
                        color: kBlack,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
              ),
            ],
          ),
        ));
  }
}
