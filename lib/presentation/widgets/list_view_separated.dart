import 'package:flutter/material.dart';

class CustomListViewSeparated extends StatelessWidget {
  const CustomListViewSeparated({
    Key? key,
    required this.itemBuilder,
    required this.itemCount,
  }) : super(key: key);

  final Widget Function(BuildContext context, int index) itemBuilder;
  final int itemCount;

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
