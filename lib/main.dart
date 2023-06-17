import 'package:flutter/material.dart';
import 'package:baby_tech/homepage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Homepage(),
      // theme: ThemeData(brightness: Brightness.dark,
      // primarySwatch: Colors.orange),
      // theme: ThemeData(brightness: Brightness.light,
      // primarySwatch: Colors.amber),
    );
  }
}