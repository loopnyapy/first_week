import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  const Square({Key? key, required this.color}) : super(key: key);

  final Color color;

  @override
  Widget build(context) {
    return Container(
      color: color,
    );
  }
}
