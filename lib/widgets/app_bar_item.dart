import 'package:om_chauhan/all_imports.dart';

class TopMenuItem extends StatefulWidget {
  final String? title;
  final Function()? onTap;
  final double? fontSize;
  const TopMenuItem({
    Key? key,
    this.title,
    this.onTap,
    this.fontSize = 14,
  }) : super(key: key);

  @override
  State<TopMenuItem> createState() => _TopMenuItemState();
}

class _TopMenuItemState extends State<TopMenuItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
          decoration: BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                offset: Offset(1, 1),
              ),
            ],
          ),
          child: TextBuilder(
            text: widget.title,
            textAlign: TextAlign.center,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: kBlack,
          ),
        ),
      ),
    );
  }
}
