import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui06/home_screen.dart';
// source : https://www.youtube.com/watch?v=XBKzpTz65Io&t=335s
// chennel : The Flutter Way
// title  : Online Shop App - Flutter UI - Speed Code
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   debugShowCheckedModeBanner: false,

  scrollBehavior: MyCustomScrollBehavior(),

  
      home: const  HomeScreen(),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior{
// Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

