import 'package:flutter/material.dart';
import 'package:shop_app_flutter/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Shopping App",
      home: HomeScreen(),
    );
  }
}
