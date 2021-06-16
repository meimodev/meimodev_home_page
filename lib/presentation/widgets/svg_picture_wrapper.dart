import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore_for_file: public_member_api_docs
class SvgPictureWrapper extends StatelessWidget {
  const SvgPictureWrapper({
    Key? key,
    required this.assetLocation,
  }) : super(key: key);

  final String assetLocation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SvgPicture.asset(
        assetLocation,
        fit: BoxFit.contain,
      ),
    );
  }
}
