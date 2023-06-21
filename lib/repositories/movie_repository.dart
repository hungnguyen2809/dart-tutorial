import 'dart:convert';

import 'package:dart_application_tutorial/models/movie.dart';
import 'package:http/http.dart' as http;

const urlMovies = 'https://reactnative.dev/movies.json';

// Future (dart) = Promise (javascript)
Future<List<Movie>> fetchMovies() async {
  List<Movie> movies = [];

  try {
    final response = await http.get(Uri.parse(urlMovies));
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      movies = (json['movies'] as List)
          .map((movie) => Movie.fromJson(movie))
          .toList();
    }

    return movies;
  } on Exception catch (e) {
    throw Exception('Failed to fetach films: ${e.toString()}');
  }
}
