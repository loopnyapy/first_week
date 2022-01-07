import 'dart:math';

import 'package:first_week/presentation/widgets/custom_appbar.dart';
import 'package:first_week/utils/pages.dart';
import 'package:flutter/material.dart';

class FourSquarePage extends StatefulWidget {
  const FourSquarePage({Key? key}) : super(key: key);

  @override
  State<FourSquarePage> createState() => _FourSquarePageState();
}

class _FourSquarePageState extends State<FourSquarePage> {
  var isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Pages.fourSquares,
        hasLeading: true,
      ),
      body: GridView.count(
        padding: const EdgeInsets.only(
          top: 60.0,
          left: 16.0,
          right: 16.0,
        ),
        crossAxisCount: 2,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        children: List.generate(
          4,
          (_) => Container(
            color: generateColor(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => isPressed = true),
        child: const Icon(Icons.edit),
      ),
    );
  }

  Color generateColor() => isPressed ? Color(Random().nextInt(0xffffffff)) : Colors.grey;
}
