import 'package:english_words/english_words.dart';
import 'package:first_week/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class SavedPage extends StatelessWidget {
  final Set<WordPair> saved;

  const SavedPage({
    required this.saved,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Saved Suggestions',
        hasLeading: true,
      ),
      body: ListView(
        children: saved.isNotEmpty
            ? ListTile.divideTiles(
                context: context,
                tiles: saved.map(
                  (pair) => ListTile(
                    title: Text(
                      pair.asPascalCase,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                ),
              ).toList()
            : [
                const Center(
                  child: Text(
                    "There's no saved suggestion yet! Go change it! 😎",
                  ),
                ),
              ],
      ),
    );
  }
}
