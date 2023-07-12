import 'package:flutter/material.dart';

class MovieListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie List'),
      ),
      body: ListView.builder(
        itemCount: movieList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(movieList[index].title),
            subtitle: Text(movieList[index].genre),
            leading: Image.network(movieList[index].imageUrl),
            onTap: () {
              // Handle movie item tap
            },
          );
        },
      ),
    );
  }
}

class Movie {
  final String title;
  final String genre;
  final String imageUrl;

  Movie({required this.title, required this.genre, required this.imageUrl});
}

List<Movie> movieList = [
  Movie(
    title: 'Movie 1',
    genre: 'Action',
    imageUrl: 'https://example.com/movie1.jpg',
  ),
  Movie(
    title: 'Movie 2',
    genre: 'Comedy',
    imageUrl: 'https://example.com/movie2.jpg',
  ),
  Movie(
    title: 'Movie 3',
    genre: 'Drama',
    imageUrl: 'https://example.com/movie3.jpg',
  ),
];