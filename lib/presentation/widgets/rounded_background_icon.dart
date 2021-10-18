import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'svg_picture_wrapper.dart';

// ignore_for_file: public_member_api_docs
class RoundedBackgroundIcon extends StatelessWidget {
  const RoundedBackgroundIcon({
    Key? key,
    required this.asset,
    this.height,
    this.width,
  }) : super(key: key);

  final String asset;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: width ?? 60,
        height: height ?? 60,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white70,
        ),
        child: SvgPictureWrapper(
          padding: 0,
          assetLocation: asset,
        ),
      ),
    );
  }
}
