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
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (enter) {
        setState(() {
          _isHover = true;
        });
      },
      onExit: (exit) {
        setState(() {
          _isHover = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: TextBuilder(
          text: widget.title,
          textAlign: TextAlign.center,
          fontSize: _isHover ? 16 : widget.fontSize,
          fontWeight: _isHover ? FontWeight.w400 : FontWeight.w300,
          color: kWhite,
        ),
      ),
    );
  }
}
