import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Themes {
  final light = ThemeData.light().copyWith(
    backgroundColor: Colors.white,
    bottomAppBarColor: Colors.cyan,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.cyan,
      textTheme: ButtonTextTheme.primary,
    ),
  );
   final dark = ThemeData.dark().copyWith(
    backgroundColor: Colors.black,
    bottomAppBarColor: Colors.deepPurple,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.deepPurple,
      textTheme: ButtonTextTheme.primary,
    ),
  );

  // final _getStorage =_getStorage();
  // final _darkThemeKey = "isDarkTheme";

  // void savaThemeData(bool isDarkMode){
  //   _getStorage.write(_darkThemeKey,isDarkMode);
  // }
  // bool isSavedDarkMode(){
  //   return _getStorage.read(_darkThemeKey)??false;
  // }
}