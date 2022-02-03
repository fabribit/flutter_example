import 'package:flutter/material.dart';

class AppTexts {
  static Text title(String text) {
    return Text(
      text,
      style: const TextStyle(
        // fontWeight: FontWeight.bold,
        fontFamily: 'Merriweather',
        fontSize: 29.0,
        color: Colors.white,
      ),
      textAlign: TextAlign.start,
    );
  }

  static Text paragraph(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontFamily: 'Rubik',
        fontSize: 19.0,
        color: Color.fromRGBO(186, 188, 196, 1),
      ),
      textAlign: TextAlign.start,
    );
  }
}
