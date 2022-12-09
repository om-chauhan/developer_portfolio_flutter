import 'package:om_chauhan/all_imports.dart';

enum ButtonType { playStore, miStore, website, github }

enum ButtonShape { circle, rect }

class ActionButton extends StatefulWidget {
  final ButtonType buttonType;
  final ButtonShape buttonShape;

  final Function()? onTap;
  const ActionButton({
    Key? key,
    this.onTap,
    required this.buttonType,
    required this.buttonShape,
  }) : super(key: key);

  @override
  State<ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  setIcons(ButtonType type) {
    switch (type) {
      case ButtonType.github:
        return githubIcon;
      case ButtonType.playStore:
        return googlePlayIcon;
      case ButtonType.miStore:
        return miStoreIcon;
      default:
        return websiteIcon;
    }
  }

  setShape(ButtonShape buttonShape) {
    switch (buttonShape) {
      case ButtonShape.circle:
        return Image.asset(
          setIcons(widget.buttonType),
          height: 40,
          width: 40,
        );

      default:
        return Image.asset(
          setIcons(widget.buttonType),
          width: 120,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: setShape(widget.buttonShape),
    );
  }
}
