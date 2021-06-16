import 'package:flutter/material.dart';
import 'package:meimodev_home_page/presentation/widgets/global_padding_wrapper.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GlobalPaddingWrapper(
      child: Container(
        child: Center(
          child: Text('Contact Screen'),
        ),
      ),
    );
  }
}
