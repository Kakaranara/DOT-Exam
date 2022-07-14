import 'package:dot_test/constant/colors.dart';
import 'package:dot_test/screen/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DOT Indonesia',
        theme: _materialTheme(),
        home: const HomePage());
  }

  ThemeData _materialTheme() {
    return ThemeData(
      fontFamily: "SourceSansPro",
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
        centerTitle: true,
        elevation: 0,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: ThemeColor.blue(), foregroundColor: Colors.white),
      colorScheme: const ColorScheme.light(primary: Colors.white),
    );
  }
}
