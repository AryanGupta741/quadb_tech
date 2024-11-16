import 'package:flutter/material.dart';
import '../models/movie.dart';

class DetailsScreen extends StatelessWidget {
  final Movie movie;

  DetailsScreen({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(movie.name), backgroundColor: Colors.black),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(movie.image),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                movie.summary.replaceAll(RegExp(r'<[^>]*>'), ''),
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Language: ${movie.language}", style: TextStyle(fontSize: 16)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Genres: ${movie.genres.join(', ')}", style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
