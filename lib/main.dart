import 'package:flutter/material.dart';
import 'package:google_agenda/screens/home/home.dart';
import 'package:google_agenda/style.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        floatingActionButtonTheme: 
        FloatingActionButtonThemeData(
          backgroundColor: redTheme
        ),
        dividerTheme: DividerThemeData(
          color: grayDivider,
          thickness: 1,
        ),
        primarySwatch: blueTheme,
      ),
    )
  );
}
