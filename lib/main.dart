// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:basketball_counter_app/homePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: pointsCounter(),
    );
  }
}

class pointsCounter extends StatelessWidget {
  pointsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
