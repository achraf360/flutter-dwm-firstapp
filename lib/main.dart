import 'package:dwm_app/pages/counter.page.dart';
import 'package:dwm_app/pages/home.page.dart';
import 'package:dwm_app/pages/products.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DwmApp());
}

class DwmApp extends StatelessWidget {
  const DwmApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const HomePage(),
        "/counter": (context) => CounterPage(),
        "/products": (context) => const ProductsPage(),
      },
      theme: ThemeData(
          primaryColor: Colors.blueGrey,
          primarySwatch: Colors.blueGrey,
          textTheme: const TextTheme(
              bodyMedium: TextStyle(fontSize: 22, color: Colors.teal),
              bodyLarge: TextStyle(fontSize: 32, color: Colors.teal),
              bodySmall: TextStyle(fontSize: 18, color: Colors.teal)),
          iconTheme: IconThemeData(color: Colors.teal, size: 26)),
    );
  }
}
