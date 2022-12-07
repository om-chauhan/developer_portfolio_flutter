import 'package:om_chauhan/all_imports.dart';

Future<dynamic> showDetails({required BuildContext context, required Widget child}) {
  return showDialog(
    context: context,
    useSafeArea: true,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        insetPadding: EdgeInsets.zero,
        titlePadding: EdgeInsets.zero,
        buttonPadding: EdgeInsets.zero,
        actionsPadding: EdgeInsets.zero,
        contentPadding: EdgeInsets.zero,
        content: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 700,
            height: 700,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: child,
          ),
        ),
      );
    },
  );
}
