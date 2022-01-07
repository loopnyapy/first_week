import 'package:first_week/presentation/four_squares/four_squares_page.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({Key? key, required this.title, required this.onTap}) : super(key: key);

  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(context),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(5.0),
          ),
          color: Theme.of(context).primaryColor,
        ),
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16.0),
            ),
            const Icon(Icons.arrow_forward),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
      ),
    );
  }
}
