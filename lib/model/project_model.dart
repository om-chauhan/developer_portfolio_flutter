class ProjectModel {
  final String title;
  final String description;
  final String website;
  final String gitHub;
  final List<String> screenshot;
  final String demo;
  final bool? top;

  ProjectModel({
    required this.title,
    required this.description,
    required this.website,
    required this.gitHub,
    required this.screenshot,
    required this.demo,
    required this.top,
  });
}
