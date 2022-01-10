import 'package:first_week/presentation/widgets/custom_appbar.dart';
import 'package:first_week/utils/pages.dart';
import 'package:flutter/material.dart';

class CodelabPage extends StatelessWidget {
  const CodelabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: Pages.codelab,
        hasLeading: true,
      ),
      body: SizedBox(),
    );
  }
}
