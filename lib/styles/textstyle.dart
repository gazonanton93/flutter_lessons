import 'package:flutter/material.dart';

abstract class ThemeText {
  static const TextStyle progressHeader = TextStyle(
      fontFamily: 'Montserrat',
      color: Colors.white,
      fontSize: 11,     
      fontWeight: FontWeight.w600);

  static const TextStyle progressBody = TextStyle(
      fontFamily: 'Montserrat',
      color: Colors.white,
      fontSize: 10,
      fontWeight: FontWeight.w400);

  static const TextStyle progressFooter = TextStyle(
      fontFamily: 'Montserrat',
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w600);

  static const TextStyle ercCardheader = TextStyle(
      fontFamily: 'Montserrat',
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w700);

  static const TextStyle ercCard = TextStyle(
      fontFamily: 'Montserrat',
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w400);


  static const TextStyle sliverText = TextStyle(
      fontFamily: 'Montserrat',
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w400);

  static const TextStyle sliverTextHeader = TextStyle(
      fontFamily: 'Montserrat',
      color: Colors.white,
      fontSize: 22,
      shadows: <Shadow>[
      Shadow(
        offset: Offset(1.0, 1.0),
        blurRadius: 2.0,
        color: Color.fromARGB(255, 0, 0, 0),
      ),],

      fontWeight: FontWeight.w400);

  static const TextStyle splashHead = TextStyle(
      fontFamily: 'Montserrat',
      color: Colors.white,
      fontSize: 30,
      fontWeight: FontWeight.w400);
}