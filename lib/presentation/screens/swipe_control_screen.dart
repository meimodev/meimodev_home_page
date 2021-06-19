import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';
import '../../style.dart';

import '../widgets/custom_nav_bar.dart';

import 'contact_screen.dart';
import 'home_screen.dart';
import 'mobile_screen.dart';
import 'web_screen.dart';

// ignore_for_file: public_member_api_docs,omit_local_variable_types,lines_longer_than_80_chars
class SwipeControlScreen extends StatelessWidget {
  final List<Widget> _screens = [
    HomeScreen(),
    MobileScreen(),
    WebScreen(),
    ContactScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorBackgroundMain,
        appBar: CustomAppBar(),
        body: Swiper(
          itemBuilder: (_, index) {
            return _screens[index];
          },
          itemCount: _screens.length,
          pagination: SwiperPagination(),
          control: SwiperControl(),
        ),
      ),
    );
  }
}
