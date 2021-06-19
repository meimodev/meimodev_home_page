import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../style.dart';
import '../widgets/responsive_main_layout.dart';
import '../widgets/rounded_background_icon.dart';
import '../widgets/svg_picture_wrapper.dart';

// ignore_for_file: public_member_api_docs
class MobileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveMainLayout(
      leftChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'TOP OF THE LINE TECHNOLOGY',
            style: textStyleBodyTitle,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: insetSmall * .5,
          ),
          AutoSizeText(
            // ignore: lines_longer_than_80_chars
            'From idea to market published app',
            style: textStyleBodySubTitle,
            textAlign: TextAlign.start,
            maxLines: 5,
          ),
          SizedBox(
            height: insetSmall * .5,
          ),
          AutoSizeText(
            // ignore: lines_longer_than_80_chars
            'Experienced with software architecture e.g. Clean Architecture, MVC, MVVM, DDD',
            style: textStyleBodySubTitle,
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: insetSmall * .5,
          ),
          AutoSizeText(
            // ignore: lines_longer_than_80_chars
            'Familiar in OOP with SOLID principles & Functional Programming concepts',
            style: textStyleBodySubTitle,
            textAlign: TextAlign.start,
            maxLines: 5,
          ),
          SizedBox(
            height: insetMedium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundedBackgroundIcon(
                asset: 'assets/images/logo_android.svg',
              ),
              SizedBox(
                width: insetSmall,
              ),
              RoundedBackgroundIcon(
                asset: 'assets/images/logo_apple.svg',
              ),
              SizedBox(
                width: insetSmall,
              ),
              RoundedBackgroundIcon(asset: 'assets/images/logo_flutter.svg'),
              SizedBox(
                width: insetSmall,
              ),
              RoundedBackgroundIcon(
                asset: 'assets/images/logo_java.svg',
              ),
              SizedBox(
                width: insetSmall,
              ),
              RoundedBackgroundIcon(
                asset: 'assets/images/logo_kotlin.svg',
              ),
            ],
          ),
        ],
      ),
      rightChild: SvgPictureWrapper(
        assetLocation: 'assets/images/mobile_app_dev.svg',
      ),
    );
  }
}
