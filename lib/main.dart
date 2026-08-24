import 'package:flutter/material.dart';
import 'package:flutter_task_omkar/Screens/home_screen.dart';

void main() {
  runApp(const MypcotApp());
}

class MypcotApp extends StatelessWidget {
  const MypcotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mypcot',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}