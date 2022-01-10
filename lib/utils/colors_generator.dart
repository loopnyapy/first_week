import 'dart:math';
import 'package:flutter/material.dart';

class ColorsGenerator {
  static Color generateRandomColor() => Color(Random().nextInt(0xffffffff));

  static void generateColorList({
    required void Function(List<Color> colorList) setWidgetState,
    required int length,
    bool isRandom = false,
  }) =>
      setWidgetState(
        List.generate(
          length,
          (_) => isRandom ? generateRandomColor() : Colors.grey,
        ),
      );
}
