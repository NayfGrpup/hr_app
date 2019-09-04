import 'package:flutter/material.dart';
import 'package:hr_project/splash_screen.dart';

void main() => runApp(HrMain());

class HrMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nayf Group',
      home: SplashScreen(),
    );
  }
}
