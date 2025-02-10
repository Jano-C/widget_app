import 'package:flutter/material.dart';

const colorList = <Color>[

    Colors.blue,
    Colors.teal,
    Colors.green,
    Colors.red,
    Colors.purple,
    Colors.orange,
    Colors.pink,
  ];

class AppTheme {

  

  final int selectedColor;

  const AppTheme({
    this.selectedColor = 0,
  }): assert(

    selectedColor >= 0 && selectedColor < colorList.length,"invalid selected color"
  
  );

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[ selectedColor],
    appBarTheme: const AppBarTheme(
      centerTitle: false,
    ),
    
    );
  }
  
