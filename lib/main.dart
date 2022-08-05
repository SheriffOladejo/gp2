import 'package:flutter/material.dart';
import 'views/home_page.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {

  // This widget is the root of the application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kambia',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Kambia Home Page'),
    );
  }
}

