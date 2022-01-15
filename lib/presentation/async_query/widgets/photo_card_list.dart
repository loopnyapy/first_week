import 'package:first_week/model/photo/photo_card.dart';
import 'package:first_week/presentation/widgets/list_view_separated.dart';
import 'package:flutter/material.dart';

class PhotoCardList extends StatelessWidget {
  final List<PhotoCard> photos;
  const PhotoCardList({
    required this.photos,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomListViewSeparated(
      itemBuilder: (_, index) => Card(
        clipBehavior: Clip.hardEdge,
        child: Column(
          children: [
            Image.network(
              photos[index].url,
              fit: BoxFit.cover,
              frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                if (wasSynchronouslyLoaded) {
                  return child;
                }
                return AnimatedOpacity(
                  opacity: frame == null ? 0.0 : 1.0,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeOut,
                  child: child,
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                photos[index].title,
                style: Theme.of(context).textTheme.caption,
              ),
            ),
          ],
        ),
      ),
      itemCount: photos.length,
    );
  }
}
