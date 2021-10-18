import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'presentation/screens/swipe_control_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1280, 720),
      builder: () => MaterialApp(
        title: 'Meimodev | Software Development',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SwipeControlScreen(),
      ),
    );
  }
}
