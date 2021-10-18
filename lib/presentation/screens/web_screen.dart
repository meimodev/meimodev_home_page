import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../style.dart';
import '../widgets/responsive_main_layout.dart';
import '../widgets/rounded_background_icon.dart';
import '../widgets/svg_picture_wrapper.dart';

// ignore: public_member_api_docs
class WebScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveMainLayout(
      leftChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'FROM DESIGN TO DEPLOY',
            style: textStyleBodyTitle,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: insetSmall.h * .5,
          ),
          Text(
            // ignore: lines_longer_than_80_chars
            'Build beautiful & interactive Web with latest technology',
            style: textStyleBodySubTitle,
            textAlign: TextAlign.start,
            maxLines: 5,
          ),
          SizedBox(
            height: insetSmall.h * .5,
          ),
          Text(
            // ignore: lines_longer_than_80_chars
            'Build static landing page to Progressive Web App',
            style: textStyleBodySubTitle,
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: insetSmall.h * .5,
          ),
          Text(
            // ignore: lines_longer_than_80_chars
            'From Web Front-End environment to Back-end environment',
            style: textStyleBodySubTitle,
            textAlign: TextAlign.start,
            maxLines: 5,
          ),
          SizedBox(
            height: insetLarge.h,
          ),
          ..._buildFrontEndRow(),
          SizedBox(
            height: insetMedium.h,
          ),
          ..._buildBackEndRow(),
        ],
      ),
      rightChild: SvgPictureWrapper(
        assetLocation: 'assets/images/web_dev.svg',
      ),
    );
  }

  List<Widget> _buildFrontEndRow() {
    return [
      Text(
        'FRONT END TECH STACK',
        style: textStyleBodyTitle,
        textAlign: TextAlign.center,
      ),
      SizedBox(
        height: insetSmall.h,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RoundedBackgroundIcon(
            asset: 'assets/images/logo_ts.svg',
          ),
          SizedBox(
            width: insetSmall.h,
          ),
          RoundedBackgroundIcon(
            asset: 'assets/images/logo_react.svg',
          ),
          SizedBox(
            width: insetSmall.h,
          ),
          RoundedBackgroundIcon(
            asset: 'assets/images/logo_flutter.svg',
          ),
          SizedBox(
            width: insetSmall.h,
          ),
          RoundedBackgroundIcon(
            asset: 'assets/images/logo_bulma.svg',
          ),
          SizedBox(
            width: insetSmall.h,
          ),
          RoundedBackgroundIcon(
            asset: 'assets/images/logo_sass.svg',
          ),
          SizedBox(
            width: insetSmall.h,
          ),
          RoundedBackgroundIcon(
            asset: 'assets/images/logo_bootstrap.svg',
          ),
        ],
      )
    ];
  }

  List<Widget> _buildBackEndRow() {
    return [
      Text(
        'BACK END TECH STACK',
        style: textStyleBodyTitle,
        textAlign: TextAlign.center,
      ),
      SizedBox(
        height: insetSmall.h,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RoundedBackgroundIcon(
            asset: 'assets/images/logo_node.svg',
          ),
          // SizedBox(
          //   width: insetSmall.h,
          // ),
          RoundedBackgroundIcon(
            asset: 'assets/images/logo_express.svg',
          ),
          // SizedBox(
          //   width: insetSmall.h,
          // ),
          RoundedBackgroundIcon(
            asset: 'assets/images/logo_laravel.svg',
          ),
          // SizedBox(
          //   width: insetSmall.h,
          // ),
          RoundedBackgroundIcon(
            asset: 'assets/images/logo_firebase.svg',
          ),
          // SizedBox(
          //   width: insetSmall.h,
          // ),
          RoundedBackgroundIcon(
            asset: 'assets/images/logo_aws.svg',
          ),
          // SizedBox(
          //   width: insetSmall.h,
          // ),
          RoundedBackgroundIcon(
            asset: 'assets/images/logo_google_cloud.svg',
          ),
        ],
      )
    ];
  }
}
