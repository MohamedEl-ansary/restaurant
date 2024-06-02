import 'package:flutter/material.dart';
import 'package:restaurant_menu/components/item_category.dart';
import 'package:restaurant_menu/models/fdmodel.dart';

class SmoothieDrink extends StatefulWidget {
  const SmoothieDrink();

  @override
  State<SmoothieDrink> createState() => _SmoothieDrinkState();
}

class _SmoothieDrinkState extends State<SmoothieDrink> {
  final List<FDModel> modelSmoothie = [
    FDModel(
        image: 'assets/images/drinks/smoothie/banana.jpg',
        text: 'Banana',
        price: 55),
    FDModel(
        image: 'assets/images/drinks/smoothie/strawberry.jpg',
        text: 'Strawberry',
        price: 70),
    FDModel(
        image: 'assets/images/drinks/smoothie/mango.jpg',
        text: 'Mango',
        price: 65),
    FDModel(
        image: 'assets/images/drinks/smoothie/peach.jpg',
        text: 'Peach',
        price: 60),
    FDModel(
        image: 'assets/images/drinks/smoothie/coconut.jpg',
        text: 'Coconut',
        price: 55),
    FDModel(
        image: 'assets/images/drinks/smoothie/pineapple.jpg',
        text: 'Pineapple',
        price: 50),
    FDModel(
        image: 'assets/images/drinks/smoothie/passion fruit.jpg',
        text: 'PassionFruit',
        price: 48),
    FDModel(
        image: 'assets/images/drinks/smoothie/blueberry.jpg',
        text: 'BlueBerry',
        price: 55),
    FDModel(
        image: 'assets/images/drinks/smoothie/red berry.jpg',
        text: 'RedBerry',
        price: 55),
    FDModel(
        image: 'assets/images/drinks/smoothie/cocktail.jpg',
        text: 'Cocktail',
        price: 80),
    FDModel(
        image: 'assets/images/drinks/smoothie/Gingery_Mango_Berry.jpg',
        text: 'GingeryMangoBerry',
        price: 65),
    FDModel(
        image: 'assets/images/drinks/smoothie/rainbow.jpg',
        text: 'RainBow',
        price: 48)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF464646),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Smoothie',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: ListView.builder(
        itemCount: modelSmoothie.length,
        itemBuilder: (context, num) {
          return ItemCategory(
            models: modelSmoothie[num],
          );
        },
      ),
    );
  }
}
