import 'package:om_chauhan/all_imports.dart';

class TopMenu extends StatefulWidget {
  final Function()? home;
  final Function()? about;
  final Function()? project;
  final Function()? whatido;
  final Function()? skills;
  const TopMenu({
    Key? key,
    this.home,
    this.about,
    this.project,
    this.whatido,
    this.skills,
  }) : super(key: key);

  @override
  State<TopMenu> createState() => _TopMenuState();
}

class _TopMenuState extends State<TopMenu> {
  bool _changeTheme = false;
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 90,
      padding: EdgeInsets.symmetric(horizontal: 120),
      color: kGreyShade,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 6,
            child: GestureDetector(
              onTap: widget.home,
              child: TextBuilder(
                text: 'Portfolio',
                fontSize: 22,
                textAlign: TextAlign.left,
                color: kWhite,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TopMenuItem(
                  title: 'About Me',
                  onTap: widget.about,
                ),
                TopMenuItem(
                  title: 'Projects',
                  onTap: widget.project,
                ),
                TopMenuItem(
                  title: 'What i Do',
                  onTap: widget.whatido,
                ),
                TopMenuItem(
                  title: 'Skills',
                  onTap: widget.skills,
                ),
                // Expanded(
                //   child: RadioListTile<ThemeMode>(
                //     title: const Text('Light Mode'),
                //     groupValue: themeChanger.getTheme,
                //     value: ThemeMode.light,
                //     onChanged: themeChanger.setTheme,
                //   ),
                // ),
                // CupertinoSwitch(
                //   value: _changeTheme,
                //   activeColor: Colors.green,
                //   onChanged: (value) {
                //     themeChanger.setTheme;
                //     setState(() {
                //       _changeTheme = value;
                //     });
                //   },
                //   thumbColor: kBlack,
                //   trackColor: kWhite,
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
