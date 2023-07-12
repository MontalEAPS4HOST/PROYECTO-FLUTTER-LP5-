import 'package:flutter/material.dart';
import 'package:flutter_movie_ticket/src/core/constants/constants.dart';
import 'package:flutter_movie_ticket/src/features/movies/movies_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Movie App',
      theme: AppTheme.light,
      home: const MoviesPage(),
    );
  }
}
