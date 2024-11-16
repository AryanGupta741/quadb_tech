import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/movie.dart';

class MovieProvider with ChangeNotifier {
  List<Movie> _movies = [];
  bool _isLoading = false;

  List<Movie> get movies => _movies;
  bool get isLoading => _isLoading;

  Future<void> fetchMovies() async {
    _isLoading = true;
    notifyListeners();

    final response = await http.get(Uri.parse('https://api.tvmaze.com/search/shows?q=all'));
    if (response.statusCode == 200) {
      List jsonData = json.decode(response.body);
      _movies = jsonData.map((movie) => Movie.fromJson(movie['show'])).toList();
      _isLoading = false;
      notifyListeners();
    } else {
      throw Exception('Failed to load movies');
    }
  }

  Future<void> searchMovies(String query) async {
    _isLoading = true;
    notifyListeners();

    final response = await http.get(Uri.parse('https://api.tvmaze.com/search/shows?q=$query'));
    if (response.statusCode == 200) {
      List jsonData = json.decode(response.body);
      _movies = jsonData.map((movie) => Movie.fromJson(movie['show'])).toList();
      _isLoading = false;
      notifyListeners();
    } else {
      throw Exception('Failed to search movies');
    }
  }
}
