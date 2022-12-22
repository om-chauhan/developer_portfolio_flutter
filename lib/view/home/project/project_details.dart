import 'package:om_chauhan/all_imports.dart';

class ProjectDetails extends StatefulWidget {
  final ProjectModel data;
  const ProjectDetails({Key? key, required this.data}) : super(key: key);

  @override
  State<ProjectDetails> createState() => _ProjectDetailsState();
}

class _ProjectDetailsState extends State<ProjectDetails> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextBuilder(
                    text: widget.data.title,
                    color: kBlack,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 40,
                      width: 40,
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
                text: widget.data.description,
                color: kBlack,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(height: 20.0),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.end,
                runAlignment: WrapAlignment.spaceBetween,
                children: [
                  if (widget.data.playStore.isNotEmpty)
                    ActionButton(
                      buttonType: ButtonType.playStore,
                      buttonShape: ButtonShape.rect,
                      onTap: () {
                        UrlLaunch.launchInBrowser(url: widget.data.playStore);
                      },
                    ),
                  if (widget.data.miStore.isNotEmpty)
                    ActionButton(
                      buttonType: ButtonType.miStore,
                      buttonShape: ButtonShape.rect,
                      onTap: () {
                        UrlLaunch.launchInBrowser(url: widget.data.miStore);
                      },
                    ),
                  if (widget.data.gitHub.isNotEmpty)
                    ActionButton(
                      buttonType: ButtonType.github,
                      buttonShape: ButtonShape.circle,
                      onTap: () {
                        UrlLaunch.launchInBrowser(url: widget.data.gitHub);
                      },
                    ),
                  if (widget.data.website.isNotEmpty)
                    ActionButton(
                      buttonType: ButtonType.website,
                      buttonShape: ButtonShape.circle,
                      onTap: () {
                        UrlLaunch.launchInBrowser(url: widget.data.website);
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
              widget.data.demo.isNotEmpty
                  ? GestureDetector(
                      onTap: () {
                        UrlLaunch.launchInBrowser(url: widget.data.demo);
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
                child: widget.data.screenshot.isNotEmpty
                    ? RawScrollbar(
                        thumbColor: Colors.black45,
                        trackVisibility: true,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        thickness: 10,
                        controller: _scrollController,
                        child: ListView.builder(
                          itemCount: widget.data.screenshot.length,
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          controller: _scrollController,
                          itemBuilder: (BuildContext context, int i) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: GestureDetector(
                                onTap: () {
                                  showImagePreview(context: context, image: widget.data.screenshot[i]);
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: CachedNetworkImage(
                                    imageUrl: widget.data.screenshot[i],
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
                        ),
                      )
                    : TextBuilder(
                        text: 'No data available',
                        color: kBlack,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
              ),
              const SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    );
  }
}
