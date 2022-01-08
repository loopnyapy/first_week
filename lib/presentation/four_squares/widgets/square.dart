import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  const Square({Key? key, this.color = Colors.grey}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
