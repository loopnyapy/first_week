import 'package:first_week/presentation/main/widgets/menu_item.dart';
import 'package:first_week/presentation/widgets/custom_appbar.dart';
import 'package:first_week/presentation/widgets/list_view_separated.dart';
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
      body: CustomListViewSeparated(
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
      ),
    );
  }
}
