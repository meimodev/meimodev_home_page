import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

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
            height: insetSmall * .5,
          ),
          AutoSizeText(
            // ignore: lines_longer_than_80_chars
            'Build beautiful & interactive Web with latest technology',
            style: textStyleBodySubTitle,
            textAlign: TextAlign.start,
            maxLines: 5,
          ),
          SizedBox(
            height: insetSmall * .5,
          ),
          AutoSizeText(
            // ignore: lines_longer_than_80_chars
            'Build static landing page to Progressive Web App',
            style: textStyleBodySubTitle,
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: insetSmall * .5,
          ),
          AutoSizeText(
            // ignore: lines_longer_than_80_chars
            'From Web Front-End environment to Back-end environment',
            style: textStyleBodySubTitle,
            textAlign: TextAlign.start,
            maxLines: 5,
          ),
          ..._buildFrontEndRow(),
          SizedBox(
            height: insetMedium,
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
      SizedBox(
        height: insetLarge,
      ),
      Text(
        'FRONT END TECH STACK',
        style: textStyleBodyTitle,
        textAlign: TextAlign.center,
      ),
      SizedBox(
        height: insetSmall,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RoundedBackgroundIcon(
            asset: 'assets/images/logo_ts.svg',
          ),
          SizedBox(
            width: insetSmall,
          ),
          RoundedBackgroundIcon(
            asset: 'assets/images/logo_react.svg',
          ),
          SizedBox(
            width: insetSmall,
          ),
          RoundedBackgroundIcon(
            asset: 'assets/images/logo_flutter.svg',
          ),
          SizedBox(
            width: insetSmall,
          ),
          RoundedBackgroundIcon(
            asset: 'assets/images/logo_bulma.svg',
          ),
          SizedBox(
            width: insetSmall,
          ),
          RoundedBackgroundIcon(
            asset: 'assets/images/logo_sass.svg',
          ),
          SizedBox(
            width: insetSmall,
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
      SizedBox(
        height: insetMedium,
      ),
      Text(
        'BACK END TECH STACK',
        style: textStyleBodyTitle,
        textAlign: TextAlign.center,
      ),
      SizedBox(
        height: insetSmall,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RoundedBackgroundIcon(
            asset: 'assets/images/logo_node.svg',
          ),
          SizedBox(
            width: insetSmall,
          ),
          RoundedBackgroundIcon(
            asset: 'assets/images/logo_express.svg',
          ),
          SizedBox(
            width: insetSmall,
          ),
          RoundedBackgroundIcon(
            asset: 'assets/images/logo_laravel.svg',
          ),
          SizedBox(
            width: insetSmall,
          ),
          RoundedBackgroundIcon(
            asset: 'assets/images/logo_firebase.svg',
          ),
          SizedBox(
            width: insetSmall,
          ),
          RoundedBackgroundIcon(
            asset: 'assets/images/logo_aws.svg',
          ),
          SizedBox(
            width: insetSmall,
          ),
          RoundedBackgroundIcon(
            asset: 'assets/images/logo_google_cloud.svg',
          ),
        ],
      )
    ];
  }
}
