import 'dart:convert';

import 'package:first_week/model/photo/photo_card.dart';
import 'package:first_week/model/photo/photo_dto.dart';
import 'package:http/http.dart' as http;

abstract class PhotosDataSource {
  Future<List<PhotoCard>> getPhotos();
}

class PhotosDataSourceImpl implements PhotosDataSource {
  @override
  Future<List<PhotoCard>> getPhotos() async {
    final result = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/photos'),
    );

    if (result.statusCode != 200) {
      throw Exception(result.body);
    }

    return (json.decode(result.body) as List)
        .map(
          (photo) => PhotoDTO.fromJson(photo).toPhotoCard(),
        )
        .toList();
  }
}
