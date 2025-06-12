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
  final bool isDarkmode;

  const AppTheme({
    this.selectedColor = 0,
    this.isDarkmode = false,
  }): assert(

    selectedColor >= 0 && selectedColor < colorList.length,"invalid selected color"
  
  );

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    brightness: isDarkmode ? Brightness.dark : Brightness.light,
    colorSchemeSeed: colorList[ selectedColor],
    appBarTheme: const AppBarTheme(
      centerTitle: false,
    ),
    
    );

    AppTheme copywith({
      int? selectedColor,
      bool? isDarkmode,

    }) => AppTheme(
      selectedColor: selectedColor ?? this.selectedColor,
      isDarkmode: isDarkmode ?? this.isDarkmode,  
    );
  }
  
