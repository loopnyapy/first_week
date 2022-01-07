import 'package:first_week/presentation/main/widgets/menu_item.dart';
import 'package:first_week/presentation/widgets/custom_appbar.dart';
import 'package:first_week/utils/pages.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Главная',
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.separated(
          itemCount: Pages.pageList.length,
          itemBuilder: (context, index) => MenuItem(
            title: Pages.pageList[index].name,
            onTap: (BuildContext pageContext) => Navigator.push(
              pageContext,
              MaterialPageRoute(
                builder: (_) => Pages.pageList[index].routeWidget,
              ),
            ),
          ),
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
            height: 16.0,
          ),
        ),
      ),
    );
  }
}
