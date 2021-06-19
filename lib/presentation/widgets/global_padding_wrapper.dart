import 'package:flutter/material.dart';

import '../../style.dart';

// ignore_for_file: public_member_api_docs
class GlobalPaddingWrapper extends StatelessWidget {
  const GlobalPaddingWrapper({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(_) {
    return LayoutBuilder(
        builder: (context, __) => Padding(
              padding: EdgeInsets.symmetric(
                horizontal: _calculatePadding(context),
              ),
              child: child,
            ));
  }

  double _calculatePadding(BuildContext context) {
    final screen = ScreenSizes(context);

    if (screen.isSmallScreen) {
      return screen.width * .03125 * 1.75;
    }
    if (screen.isMediumScreen) {
      return screen.width * .0625;
    }
    if (screen.isLargeScreen) {
      return screen.width * .15;
    }
    return 180;
  }
}
