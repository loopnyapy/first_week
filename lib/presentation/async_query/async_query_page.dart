import 'package:first_week/data/photos_data_source_impl.dart';
import 'package:first_week/model/photo/photo_card.dart';
import 'package:first_week/presentation/async_query/widgets/photo_card_list.dart';
import 'package:first_week/presentation/widgets/custom_appbar.dart';
import 'package:first_week/presentation/widgets/custom_floating_action_button.dart';
import 'package:first_week/utils/pages.dart';
import 'package:flutter/material.dart';

class AsyncQueryPage extends StatefulWidget {
  const AsyncQueryPage({Key? key}) : super(key: key);

  @override
  State<AsyncQueryPage> createState() => _AsyncQueryPageState();
}

class _AsyncQueryPageState extends State<AsyncQueryPage> {
  var dataSource = PhotosDataSourceImpl();
  var photos = <PhotoCard>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Pages.asyncQuery,
        hasLeading: true,
      ),
      body: PhotoCardList(
        photos: photos,
      ),
      floatingActionButton: CustomFloatingActionButton(
        onPressed: setPhotos,
      ),
    );
  }

  void setPhotos() async {
    final result = await dataSource.getPhotos();
    setState(() {
      photos = result;
    });
  }
}
