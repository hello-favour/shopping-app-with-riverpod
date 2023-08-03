import 'package:flutter/material.dart';
import 'package:shop_app_flutter/global_variable.dart';
import 'package:shop_app_flutter/products_details.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shopping App",
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          toolbarTextStyle: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        fontFamily: "Lato",
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(254, 206, 1, 1),
          primary: const Color.fromRGBO(254, 206, 1, 1),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
        ),
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          bodySmall: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
        ),
        useMaterial3: true,
      ),
      home: ProductDetails(
        product: products[0],
      ),
    );
  }
}
