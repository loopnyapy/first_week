import 'package:first_week/presentation/four_squares/widgets/square.dart';
import 'package:first_week/presentation/widgets/custom_appbar.dart';
import 'package:first_week/presentation/widgets/custom_floating_action_button.dart';
import 'package:first_week/utils/colors_generator.dart';
import 'package:first_week/utils/pages.dart';
import 'package:flutter/material.dart';

class FourSquarePage extends StatefulWidget {
  const FourSquarePage({Key? key}) : super(key: key);

  @override
  State<FourSquarePage> createState() => _FourSquarePageState();
}

class _FourSquarePageState extends State<FourSquarePage> {
  static const squareListLength = 4;
  List<Color> currentColorList = [];

  @override
  void initState() {
    super.initState();
    setCurrentColors();
  }

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
        children: currentColorList
            .map(
              (color) => Square(color: color),
            )
            .toList(),
      ),
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () => setCurrentColors(isRandom: true),
      ),
    );
  }

  void setCurrentColors({bool isRandom = false}) => setState(
        () {
          currentColorList = ColorsGenerator.generateColorList(
            length: squareListLength,
            isRandom: isRandom,
          );
        },
      );
}
