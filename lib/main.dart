// lib/main.dart

import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'theme/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galeri Suporter Indonesia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Tema gelap modern
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: AppColors.primaryDark,
        appBarTheme: const AppBarTheme(
          color: AppColors.primaryDark,
          elevation: 0,
        ),
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        ),
        // Kreativitas: Custom Button Style
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          ),
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColors.secondaryLight),
      ),
      home: const HomeScreen(),
    );
  }
}