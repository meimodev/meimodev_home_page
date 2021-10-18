import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../style.dart';
import '../widgets/responsive_main_layout.dart';
import '../widgets/svg_picture_wrapper.dart';

// ignore: public_member_api_docs
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveMainLayout(
      leftChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('WE CRAFT SOFTWARE', style: textStyleBodyTitle),
          SizedBox(
            height: insetSmall,
          ),
          Text(
            'From website to native mobile apps\n'
            'modern design, maintainable code & scalable deploy\n'
            'employ latest tech stack with industry standard',
            style: textStyleBodySubTitle,
            textAlign: TextAlign.center,
            maxLines: 4,
          ),
          SizedBox(
            height: insetMedium,
          ),
          _CallToActionButton(),
        ],
      ),
      rightChild: SvgPictureWrapper(
        assetLocation: 'assets/images/home-box.svg',
      ),
    );
  }
}

class _CallToActionButton extends StatelessWidget {
  const _CallToActionButton({
    Key? key,
  }) : super(key: key);

  void _launchURL(String url) async => launch(url);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => _launchURL(
          'https://api.whatsapp.com/send/?phone=6289525699078&text=Info:+software+development'),
      padding: EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 19,
      ),
      child: Text(
        'GET IN TOUCH',
        style: textStyleButton.copyWith(color: Colors.white),
      ),
      color: colorPrimary,
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.circular(18),
        side: BorderSide(
          color: colorTextBright,
          width: 1,
        ),
      ),
    );
  }
}
