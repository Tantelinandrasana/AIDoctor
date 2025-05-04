import 'package:flutter/material.dart';

class ArticlesScreen extends StatelessWidget {
  const ArticlesScreen({super.key});

  final List<Map<String, String>> articles = const [
    {
      'title': 'Fisorohana ny gripa',
      'content':
          'Mikarakara fahadiovana, manosotra tanana, misoroka toerana be olona.',
    },
    {
      'title': 'Sakafo manampy hery fiarovana',
      'content': 'Voankazo sy legioma vaovao, misy vitamina C sy zinc.',
    },
    {
      'title': 'Fitondran-tena salama',
      'content':
          'Matory tsara, misotro rano betsaka, miala amin\'ny adin-tsaina.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Torohevitra ara-pahasalamana')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: articles.length,
        itemBuilder: (context, index) {
          final article = articles[index];
          return Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              title: Text(article['title']!),
              subtitle: Text(article['content']!),
              leading: const Icon(Icons.local_hospital),
            ),
          );
        },
      ),
    );
  }
}
