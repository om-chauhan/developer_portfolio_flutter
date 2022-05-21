import 'package:om_chauhan/all_imports.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final double? height, width;
  final Function()? onTap;
  const CustomButton({
    Key? key,
    required this.title,
    this.height = 40,
    this.width = 140,
    this.onTap,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onTap,
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(
          Size(width!, height!),
        ),
        backgroundColor: MaterialStateProperty.all(kPrimary),
      ),
      label: TextBuilder(
        text: title,
        color: kWhite,
        fontSize: 15,
      ),
      icon: Icon(
        icon,
        size: 15,
        color: kWhite,
      ),
    );
  }
}
