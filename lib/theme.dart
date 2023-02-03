import 'package:flutter/material.dart';

// TextTheme textTheme() {
//   return TextTheme(
//     headline1: TextStyle
//   );
// }
//style: Theme.of(context).textTheme.subtitle1 이런식으로 표시

// AppBarTheme appTheme() {
//   return AppBarTheme(
//     centerTitle: false,
//     color: Colors.white,
//     elevation: 0.0,
//     titleTextStyle: textTheme().headline6,
//   );
// }

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: const Color(0xfff9f5ea),
    fontFamily: 'Gangwon',
    primarySwatch: Colors.grey,

  );
}