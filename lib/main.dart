import 'package:first_week/presentation/main/main_page.dart';
import 'package:first_week/utils/custom_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return MaterialApp(
      title: 'First Week',
      theme: CustomThemeData.themeData,
      home: const MainPage(),
    );
  }
}
