import 'package:flutter/material.dart';
import 'package:medical_clinic/screens/splash_screen/splash_screen.dart';
import 'package:medical_clinic/utils/theme/generic_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical Clinic',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: AppTheme.lightTheme,
    );
  }
}
