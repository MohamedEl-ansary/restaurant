import 'package:flutter/material.dart';
import 'package:restaurant_menu/screens/home_page.dart';

void main(List<String> args) {
  runApp(RestaurantApp());
}

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
