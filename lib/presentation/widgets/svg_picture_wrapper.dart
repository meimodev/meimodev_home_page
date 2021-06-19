import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore_for_file: public_member_api_docs
class SvgPictureWrapper extends StatelessWidget {
  final double? padding;
  final String assetLocation;

  const SvgPictureWrapper({
    Key? key,
    required this.assetLocation,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding ?? 18.0),
      child: SvgPicture.asset(
        assetLocation,
        fit: BoxFit.contain,
      ),
    );
  }
}
