import 'dart:async';

import 'package:first_week/presentation/main/main_page.dart';
import 'package:first_week/utils/custom_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runZonedGuarded(
    () async {
      runApp(const MyApp());
    },
    (error, stack) {
      FlutterError.presentError(FlutterErrorDetails(exception: error));
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Week',
      theme: CustomThemeData.themeData,
      home: const MainPage(),
    );
  }
}
