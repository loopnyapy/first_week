import 'package:first_week/presentation/widgets/custom_appbar.dart';
import 'package:first_week/presentation/widgets/custom_floating_action_button.dart';
import 'package:first_week/presentation/widgets/list_view_separated.dart';
import 'package:first_week/utils/colors_generator.dart';
import 'package:first_week/utils/pages.dart';
import 'package:flutter/material.dart';

class ColoredListPage extends StatefulWidget {
  const ColoredListPage({Key? key}) : super(key: key);

  @override
  State<ColoredListPage> createState() => _ColoredListPageState();
}

class _ColoredListPageState extends State<ColoredListPage> {
  static const int currentColorListLength = 1000;
  List<Color> currentColorList = [];

  @override
  void initState() {
    super.initState();
    setCurrentColors();
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Pages.coloredList,
        hasLeading: true,
      ),
      body: CustomListViewSeparated(
        itemBuilder: (
          _,
          index,
        ) =>
            Container(
          height: 70,
          color: currentColorList[index],
        ),
        itemCount: currentColorList.length,
      ),
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () => setCurrentColors(isRandom: true),
      ),
    );
  }

  void setCurrentColors({bool isRandom = false}) => setState(
        () {
          currentColorList = ColorsGenerator.generateColorList(
            isRandom: isRandom,
            length: currentColorListLength,
          );
        },
      );
}
