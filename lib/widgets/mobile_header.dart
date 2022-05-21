import 'package:om_chauhan/all_imports.dart';

class MobileHeader extends StatelessWidget {
  final GlobalKey<ScaffoldState>? drawerKey;
  const MobileHeader({
    Key? key,
    this.drawerKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 80,
        child: Row(
          children: [
            InkWell(
              onTap: () {
                drawerKey!.currentState!.openDrawer();
              },
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Icon(Icons.menu),
              ),
            ),
            const SizedBox(width: 20.0),
            GestureDetector(
              child: TextBuilder(
                text: 'Portfolio',
                fontSize: 22,
                textAlign: TextAlign.left,
                color: kWhite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
