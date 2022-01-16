import 'package:first_week/model/photo/photo_card.dart';

abstract class PhotosDataSource {
  Future<List<PhotoCard>> getPhotos();
}
