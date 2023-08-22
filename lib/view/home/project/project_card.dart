import 'package:om_chauhan/all_imports.dart';

class ProjectCard extends StatefulWidget {
  final ProjectModel? project;

  const ProjectCard({
    Key? key,
    this.project,
  }) : super(key: key);

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  ScrollController listScrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    listScrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    listScrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: 50,

            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(Res.isMobile(context) ? 10 : 50),
                child: CachedNetworkImage(
                  imageUrl: widget.project!.appLogo,
                  fit: BoxFit.cover,
                  height: Res.isMobile(context) ? 100 : 230,
                  width: Res.isMobile(context) ? 100 : 230,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Center(child: CircularProgressIndicator(value: downloadProgress.progress)),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              const SizedBox(width: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextBuilder(
                      text: widget.project!.title,
                      color: kBlack,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                    const SizedBox(height: 10.0),
                    TextBuilder(
                      text: widget.project!.description,
                      color: const Color(0xff636366),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    const SizedBox(height: 10.0),
                    if (widget.project!.demo.isNotEmpty)
                      InkWell(
                        onTap: () {
                          UrlLaunch.launchInBrowser(url: widget.project!.demo);
                        },
                        child: const TextBuilder(
                          text: 'Demo',
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    const SizedBox(height: 10.0),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.end,
                      runAlignment: WrapAlignment.spaceBetween,
                      children: [
                        if (widget.project!.playStore.isNotEmpty)
                          ActionButton(
                            buttonType: ButtonType.playStore,
                            buttonShape: ButtonShape.rect,
                            onTap: () {
                              UrlLaunch.launchInBrowser(url: widget.project!.playStore);
                            },
                          ),
                        if (widget.project!.miStore.isNotEmpty)
                          ActionButton(
                            buttonType: ButtonType.miStore,
                            buttonShape: ButtonShape.rect,
                            onTap: () {
                              UrlLaunch.launchInBrowser(url: widget.project!.miStore);
                            },
                          ),
                        if (widget.project!.gitHub.isNotEmpty)
                          ActionButton(
                            buttonType: ButtonType.github,
                            buttonShape: ButtonShape.circle,
                            onTap: () {
                              UrlLaunch.launchInBrowser(url: widget.project!.gitHub);
                            },
                          ),
                        if (widget.project!.website.isNotEmpty)
                          ActionButton(
                            buttonType: ButtonType.website,
                            buttonShape: ButtonShape.circle,
                            onTap: () {
                              UrlLaunch.launchInBrowser(url: widget.project!.website);
                            },
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (widget.project!.screenshot.isEmpty) const SizedBox(height: 20.0),
          if (widget.project!.screenshot.isEmpty) Divider(color: Colors.black.withOpacity(0.3), thickness: 0.5, height: 1),
          if (widget.project!.screenshot.isNotEmpty)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20.0),
                Divider(color: Colors.black.withOpacity(0.3), thickness: 0.5, height: 1),
                const SizedBox(height: 20.0),
                TextBuilder(
                  text: 'Screenshots',
                  color: kBlack,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  textOverflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  height: 500,
                  width: size.width,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        height: 500,
                        width: size.width,
                        child: ListView.builder(
                          itemCount: widget.project!.screenshot.length,
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          controller: listScrollController,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: CachedNetworkImage(
                                  imageUrl: widget.project!.screenshot[index],
                                  fit: BoxFit.fitWidth,
                                  height: 500,
                                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                                      Center(child: CircularProgressIndicator(value: downloadProgress.progress)),
                                  errorWidget: (context, url, error) => const Icon(Icons.error),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      if (widget.project!.screenshot.length > 1 && !Res.isMobile(context))
                        Positioned(
                          left: 0,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                listScrollController.animateTo(0, duration: const Duration(seconds: 1), curve: Curves.easeInOut);
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      if (widget.project!.screenshot.length > 1 && !Res.isMobile(context))
                        Positioned(
                          right: 0,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                listScrollController.animateTo(
                                  MediaQuery.of(context).size.width,
                                  duration: const Duration(seconds: 2),
                                  curve: Curves.easeInOut,
                                );
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                          width: Res.isMobile(context) ? 150 : 200, child: Divider(color: Colors.black.withOpacity(0.6), thickness: 0.5, height: 1)),
                      const SizedBox(height: 8),
                      const TextBuilder(
                        text: 'END',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                          width: Res.isMobile(context) ? 100 : 200, child: Divider(color: Colors.black.withOpacity(0.6), thickness: 0.5, height: 1)),
                    ],
                  ),
                ),
              ],
            )
        ],
      ),
    );
  }
}
