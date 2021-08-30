import 'package:flutter/material.dart';

var appBarColor = Color(0xFF5B9313);
var labelColor = Color(0xFF5B9313);
var headingColor = Color(0xFF5B9313);
var textColor = Color(0xFFFFFFFF);
var iconColor = Color(0xFF5B9313);
var backGroundColor = Color(0xFFFFFFFF);
var themeColor = Color(0xFF5B9313);
var buttonColor = Color(0xFF5B9313);

MaterialColor convertToMaterialColor(var string) {
  Map<int, Color> color = {
    50: Color.fromRGBO(136, 14, 79, .1),
    100: Color.fromRGBO(136, 14, 79, .2),
    200: Color.fromRGBO(136, 14, 79, .3),
    300: Color.fromRGBO(136, 14, 79, .4),
    400: Color.fromRGBO(136, 14, 79, .5),
    500: Color.fromRGBO(136, 14, 79, .6),
    600: Color.fromRGBO(136, 14, 79, .7),
    700: Color.fromRGBO(136, 14, 79, .8),
    800: Color.fromRGBO(136, 14, 79, .9),
    900: Color.fromRGBO(136, 14, 79, 1),
  };
  MaterialColor colorCustom = MaterialColor(string, color);
  return colorCustom;
}
