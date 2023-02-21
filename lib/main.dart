import 'package:flutter/material.dart';
import 'package:operator_profile/resources/theme_manager.dart';
import 'package:operator_profile/screens/LandingPage.dart';

import 'screens/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),
      home: LandingPage(),
    );
  }
}
