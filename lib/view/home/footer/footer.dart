import 'package:om_chauhan/all_imports.dart';

class Footer extends StatefulWidget {
  final void Function()? clikToTop;
  const Footer({
    Key? key,
    this.clikToTop,
  }) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      // height: 600,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 120, vertical: 50),
      color: Color(0xff5429CF),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 50,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: FaIcon(
                  FontAwesomeIcons.linkedinIn,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: FaIcon(
                  FontAwesomeIcons.twitter,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: FaIcon(
                  FontAwesomeIcons.google,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          InkWell(
            onTap: widget.clikToTop,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xff4220A3),
              ),
              child: Icon(
                Icons.expand_less,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
