import 'package:flutter/material.dart';
import 'package:respon_dash/constants.dart';

import 'screens/main/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: AppColors.bgColor,
        canvasColor: AppColors.secondaryColor,
      ),
      home: const HomeScreen(),
    );
  }
}
