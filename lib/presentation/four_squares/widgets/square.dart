import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final Color color;

  const Square({required this.color, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
