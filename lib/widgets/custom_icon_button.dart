import 'package:om_chauhan/all_imports.dart';

class CustomIconButton extends StatelessWidget {
  final IconData? icon;
  final Function()? onTap;
  const CustomIconButton({Key? key, this.icon, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: kPrimary,
          shape: BoxShape.circle,
        ),
        child: FaIcon(
          icon,
          color: kWhite,
        ),
      ),
    );
  }
}
