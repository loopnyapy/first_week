import 'package:first_week/model/photo/photo_card.dart';

class PhotoDTO {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;
  const PhotoDTO._({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  static PhotoDTO fromJson(Map<String, dynamic> json) {
    return PhotoDTO._(
      albumId: json['albumId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'albumId': albumId,
      'id': id,
      'title': title,
      'url': url,
      'thumbnailUrl': thumbnailUrl,
    };
  }

  PhotoCard toPhotoCard() {
    return PhotoCard(
      url: url,
      title: title,
    );
  }
}
