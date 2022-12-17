import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'views/splashscreen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homestay Raya',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SpashScreen(),
    );
  }
}