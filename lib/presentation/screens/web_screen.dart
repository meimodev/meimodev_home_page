import 'package:flutter/material.dart';
import 'package:meimodev_home_page/presentation/widgets/global_padding_wrapper.dart';

class WebScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GlobalPaddingWrapper(
      child: Container(
        child: Center(
          child: Text(
            'Build beautiful & interactive Web with latest technology\n'
            'Build static landing page to Progressive Web App'
            'From Design table to launch in the cloud ',
          ),
        ),
      ),
    );
  }
}
