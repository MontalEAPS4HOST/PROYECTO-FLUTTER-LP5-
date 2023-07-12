import 'package:flutter/material.dart';

//En este archivo se definen todas las clases principales y sus atributos
//los cuales varios de ellos son requeridos en el constructor

//La clase Movie{} hace referencia a las películas como tal y se desgloza
//todos sus atributos como nombre, tipo, etc
class Movie {
  final String name;
  final String image;
  final String screenPreview;
  final String description;
  final String type;
  final int hours;
  final String director;
  final int stars;
  final List<String> actors;
  final List<MovieDate> dates;
  final List<List<Seat>> seats;

  const Movie({
    required this.name,
    required this.image,
    required this.screenPreview,
    required this.description,
    required this.type,
    required this.hours,
    required this.director,
    required this.stars,
    required this.actors,
    required this.dates,
    required this.seats,
  });
}

//La clase MovieDate{} hace referencia a las fechas disponibles para cada
//película y se desgloza todos sus atributos como día, fecha, etc
class MovieDate {
  final int day;
  final String month;
  final String hour;

  const MovieDate({
    required this.day,
    required this.month,
    required this.hour,
  });
}

//La clase Seat{} hace referencia a los asientos disponibles en la sala
//y se desgloza todos sus atributos como ocupado, desocupado, etc
class Seat {
  final bool isHidden;
  final bool isOcuppied;
  bool isSelected;

  Seat({
    required this.isHidden,
    required this.isOcuppied,
    this.isSelected = false,
  });
}

//La clase SeatType{} hace referencia a los tipos de asientos disponibles
//y se desgloza todos sus atributos como color, nombre, etc
class SeatType {
  final String name;
  final Color color;

  const SeatType({
    required this.name,
    required this.color,
  });
}
