import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/movie_provider.dart';
import 'details_screen.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search Movies'), backgroundColor: Colors.black),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (query) => Provider.of<MovieProvider>(context, listen: false).searchMovies(query),
              decoration: InputDecoration(hintText: 'Search for movies', border: OutlineInputBorder()),
            ),
          ),
          Consumer<MovieProvider>(
            builder: (context, movieProvider, child) {
              if (movieProvider.isLoading) {
                return CircularProgressIndicator();
              }

              return Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.7,
                  ),
                  padding: EdgeInsets.all(8),
                  itemCount: movieProvider.movies.length,
                  itemBuilder: (context, index) {
                    final movie = movieProvider.movies[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DetailsScreen(movie: movie)),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage(movie.image), fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.all(8),
                        child: Text(
                          movie.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            shadows: [Shadow(blurRadius: 5, color: Colors.black)],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
