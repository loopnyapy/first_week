import 'package:first_week/presentation/widgets/custom_appbar.dart';
import 'package:first_week/presentation/widgets/custom_floating_action_button.dart';
import 'package:first_week/utils/pages.dart';
import 'package:flutter/material.dart';

class AsyncQueryPage extends StatelessWidget {
  const AsyncQueryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Pages.asyncQuery,
        hasLeading: true,
      ),
      body: const SizedBox(),
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
