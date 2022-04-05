import 'package:flutter/material.dart';
import 'package:flutter_gallery/main_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Gallery',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFEEEEEE)),
      home: const MainScreen(),
    );
  }
}
