import 'package:english_words/english_words.dart';
import 'package:first_week/presentation/codelab/saved_page.dart';
import 'package:first_week/presentation/codelab/widgets/word_pair_row.dart';
import 'package:first_week/presentation/widgets/custom_appbar.dart';
import 'package:first_week/presentation/widgets/list_view_separated.dart';
import 'package:first_week/utils/pages.dart';
import 'package:flutter/material.dart';

class CodelabPage extends StatefulWidget {
  const CodelabPage({Key? key}) : super(key: key);

  @override
  State<CodelabPage> createState() => _CodelabPageState();
}

class _CodelabPageState extends State<CodelabPage> {
  final _suggestions = <WordPair>[];
  final _saved = <WordPair>{};

  @override
  void initState() {
    super.initState();
    addWordPairsToList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Pages.codelab,
        hasLeading: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => SavedPage(saved: _saved),
              ),
            ),
            tooltip: 'Saved Suggestions',
          ),
        ],
      ),
      body: NotificationListener<ScrollUpdateNotification>(
        child: CustomListViewSeparated(
          itemBuilder: (_, index) {
            var currentSuggestion = _suggestions[index];
            var isAlreadySaved = _saved.contains(currentSuggestion);

            return WordPairRow(
              pair: currentSuggestion,
              saved: isAlreadySaved,
              onTap: () => onWordPairRowTap(isAlreadySaved, currentSuggestion),
            );
          },
          itemCount: _suggestions.length,
        ),
        onNotification: onNotification,
      ),
    );
  }

  void addWordPairsToList() => setState(() {
        _suggestions.addAll(generateWordPairs().take(20));
      });

  bool onNotification(ScrollUpdateNotification notification) {
    if (notification.metrics.pixels >= notification.metrics.maxScrollExtent) {
      addWordPairsToList();
    }
    return true;
  }

  void onWordPairRowTap(
    bool isAlreadySaved,
    WordPair currentSuggestion,
  ) =>
      setState(
        () {
          if (isAlreadySaved) {
            _saved.remove(currentSuggestion);
          } else {
            _saved.add(currentSuggestion);
          }
        },
      );
}
