import 'package:flutter/material.dart';

class Square extends StatefulWidget {
  const Square({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  _SquareWidgetState createState() => _SquareWidgetState();
}

class _SquareWidgetState extends State<Square> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
    );
  }
}
