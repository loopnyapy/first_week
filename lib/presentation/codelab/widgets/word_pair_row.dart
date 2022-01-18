import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class WordPairRow extends StatelessWidget {
  final WordPair pair;
  final VoidCallback onTap;
  final bool saved;

  const WordPairRow({
    required this.pair,
    required this.onTap,
    Key? key,
    this.saved = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: Theme.of(context).textTheme.subtitle1,
      ),
      trailing: Icon(
        saved ? Icons.favorite : Icons.favorite_border,
        color: saved ? Colors.red : null,
        semanticLabel: saved ? 'Remove from saved' : 'Save',
      ),
      onTap: onTap,
    );
  }
}
