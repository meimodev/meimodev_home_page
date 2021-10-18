import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../style.dart';
import 'global_padding_wrapper.dart';

// ignore_for_file: public_member_api_docs
class ResponsiveMainLayout extends StatelessWidget {
  const ResponsiveMainLayout({
    Key? key,
    required this.leftChild,
    required this.rightChild,
  }) : super(key: key);

  final Widget leftChild;

  final Widget rightChild;

  @override
  Widget build(BuildContext context) {
    return GlobalPaddingWrapper(
      child: Padding(
        padding: EdgeInsets.all(insetMedium.w),
        child: LayoutBuilder(
          builder: (context, __) => Flex(
            direction: ScreenSizes(context).isSmallScreen
                ? Axis.vertical
                : Axis.horizontal,
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: leftChild,
              ),
              SizedBox(
                width: insetSmall.w,
              ),
              ScreenSizes(context).height < 650
                  ? SizedBox.shrink()
                  : Expanded(
                      child: rightChild,
                    )
            ],
          ),
        ),
      ),
    );
  }
}
