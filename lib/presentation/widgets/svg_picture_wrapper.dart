import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

// ignore_for_file: public_member_api_docs
class SvgPictureWrapper extends StatelessWidget {
  final double? padding;
  final String assetLocation;
  final double? height;
  final double? width;

  const SvgPictureWrapper({
    Key? key,
    required this.assetLocation,
    this.padding,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 80.w,
      width: width ?? 80.w,
      child: Padding(
        padding: EdgeInsets.all(padding ?? 18.0),
        child: SvgPicture.asset(
          assetLocation,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
