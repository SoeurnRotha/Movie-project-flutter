import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_movie/pages/intro.dart';

void main(){
  runApp(Movie());
}
class Movie extends StatefulWidget {
  const Movie({Key? key}) : super(key: key);

  @override
  State<Movie> createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPages(),
    );
  }
}
