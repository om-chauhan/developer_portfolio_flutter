class ProjectModel {
  final String title;
  final String description;
  final String website;
  final String gitHub;
  final List<String> screenshot;
  final String demo;
  final String? projectType;
  final String playStore;
  final String miStore;
  final String appLogo;
  final String? downloads;
  final List<String>? tags;

  ProjectModel(
      {required this.title,
      required this.description,
      required this.website,
      required this.gitHub,
      required this.screenshot,
      required this.demo,
      required this.playStore,
      required this.miStore,
      required this.appLogo,
      this.projectType = '',
      this.downloads,
      this.tags});
}
