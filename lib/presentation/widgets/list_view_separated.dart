import 'package:flutter/material.dart';

class CustomListViewSeparated extends StatelessWidget {
  final Widget Function(BuildContext context, int index) itemBuilder;
  final int itemCount;

  const CustomListViewSeparated({
    required this.itemBuilder,
    required this.itemCount,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: itemBuilder,
      itemCount: itemCount,
      separatorBuilder: (
        context,
        index,
      ) =>
          const SizedBox(
        height: 16.0,
      ),
    );
  }
}
