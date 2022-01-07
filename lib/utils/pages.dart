import 'package:first_week/model/page.dart';
import 'package:first_week/presentation/async_query/async_query_page.dart';
import 'package:first_week/presentation/codelab/codelab_page.dart';
import 'package:first_week/presentation/colored_list/colored_list_page.dart';
import 'package:first_week/presentation/four_squares/four_squares_page.dart';

class Pages {
  static const String fourSquares = '4 квадрата';
  static const String coloredList = 'Цветной список';
  static const String codelab = 'Codelab';
  static const String asyncQuery = 'Асинхронный запрос';

  static const List<Page> pageList = [
    Page(name: fourSquares, routeWidget: FourSquarePage()),
    Page(name: coloredList, routeWidget: ColoredListPage()),
    Page(name: codelab, routeWidget: CodelabPage()),
    Page(name: asyncQuery, routeWidget: AsyncQueryPage()),
  ];
}
