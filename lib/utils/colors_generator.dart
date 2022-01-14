import 'dart:math';
import 'package:flutter/material.dart';

class ColorsGenerator {
  static Color generateRandomColor() => Color(Random().nextInt(0xffffffff));

  static List<Color> generateColorList({
    required int length,
    bool isRandom = false,
  }) =>
      List.generate(
        length,
        (_) => isRandom ? generateRandomColor() : Colors.grey,
      );
}
