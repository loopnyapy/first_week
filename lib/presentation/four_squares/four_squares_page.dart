// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:first_week/presentation/four_squares/widgets/square.dart';
import 'package:first_week/presentation/widgets/custom_appbar.dart';
import 'package:first_week/utils/pages.dart';
import 'package:flutter/material.dart';

class FourSquarePage extends StatefulWidget {
  const FourSquarePage({Key? key}) : super(key: key);

  @override
  State<FourSquarePage> createState() => _FourSquarePageState();
}

class _FourSquarePageState extends State<FourSquarePage> {
  static const squareListLength = 4;
  List<Square> currentSquareList = [];

  @override
  void initState() {
    super.initState();
    _generateSquareList(length: squareListLength);
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
        children: currentSquareList,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _generateSquareList(
          length: squareListLength,
          isRandom: true,
        ),
        child: const Icon(Icons.edit),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            const Radius.circular(16.0),
          ),
        ),
      ),
    );
  }

  Color _generateColor(bool isRandom) =>
      isRandom ? Color(Random().nextInt(0xffffffff)) : Colors.grey;

  void _generateSquareList({
    required int length,
    bool isRandom = false,
  }) =>
      setState(
        () => currentSquareList = List.generate(
          length,
          (_) => Square(
            color: _generateColor(isRandom),
          ),
        ),
      );
}
