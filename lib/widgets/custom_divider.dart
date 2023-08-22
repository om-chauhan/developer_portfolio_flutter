import 'package:om_chauhan/all_imports.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Res.isDesktop(context) ? 120 : 20),
      child: Divider(
        color: Colors.black.withOpacity(0.6),
        thickness: 0.5,
        height: 1,
      ),
    );
  }
}
