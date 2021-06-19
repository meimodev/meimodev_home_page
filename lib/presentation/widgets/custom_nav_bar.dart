import 'package:flutter/material.dart';
import 'global_padding_wrapper.dart';

import '../../style.dart';

// ignore: public_member_api_docs
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return GlobalPaddingWrapper(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/images/logo_meimo.png',
                  fit: BoxFit.contain,
                  height: 100,
                  width: 100,
                ),
              ),
            ),
            SizedBox()
            // : Expanded(flex: 8, child: _NavBarRow())
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(0, 60);
}

class _NavBarRow extends StatefulWidget {
  const _NavBarRow({Key? key}) : super(key: key);

  @override
  _NavBarRowState createState() => _NavBarRowState();
}

class _NavBarRowState extends State<_NavBarRow> {
  String activeMenu = 'Home';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: _buildNavMenus([
        'Home',
        'Mobile',
        'Web',
        'Contact',
      ]),
    );
  }

  List<Widget> _buildNavMenus(List<String> list) {
    var res = <Widget>[];

    for (var name in list) {
      res.add(
        TextButton(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(
              Colors.transparent,
            ),
          ),
          onPressed: () {
            setState(() {
              activeMenu = name;
              // var currIndex = 0;
              // for (var i = 0; i < list.length; i++) {
              //   if (name == list[i]) {
              //     currIndex = i;
              //     c.index.value = currIndex;
              //     break;
              //   }
              // }
            });
          },
          child: Text(
            name.toUpperCase(),
            textAlign: TextAlign.center,
            style: name == activeMenu
                ? textStyleNavBarMenuActive
                : textStyleNavBarMenu,
          ),
        ),
      );
    }
    return res;
  }
}
