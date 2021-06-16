import 'package:flutter/material.dart';
import 'presentation/screens/swipe_control_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SwipeControlScreen(),
    );
  }
}
