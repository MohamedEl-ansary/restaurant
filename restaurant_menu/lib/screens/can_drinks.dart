import 'package:flutter/material.dart';
import 'package:restaurant_menu/components/item_category.dart';
import 'package:restaurant_menu/models/fdmodel.dart';

class CanDrinks extends StatefulWidget {
  const CanDrinks({super.key});

  @override
  State<CanDrinks> createState() => _CanDrinksState();
}

class _CanDrinksState extends State<CanDrinks> {
  final List<FDModel> modelCans = [
    FDModel(image: 'assets/images/drinks/cans/7up.jpg', text: '7up', price: 25),
    FDModel(
        image: 'assets/images/drinks/cans/sprite.jpg',
        text: 'Sprite',
        price: 25),
    FDModel(
        image: 'assets/images/drinks/cans/sprite zero.jpg',
        text: 'SpriteZero',
        price: 24),
    FDModel(
        image: 'assets/images/drinks/cans/pepsi.jpg', text: 'Pepsi', price: 25),
    FDModel(
        image: 'assets/images/drinks/cans/pepsi_zero.jpg',
        text: 'PepsiZero',
        price: 25),
    FDModel(
        image: 'assets/images/drinks/cans/cacola.png',
        text: 'Cacola',
        price: 27),
    FDModel(
        image: 'assets/images/drinks/cans/fanta_orange.jpg',
        text: 'FantaOrange',
        price: 25),
    FDModel(
        image: 'assets/images/drinks/cans/fanta green apple.jpg',
        text: 'FantaGreenApple',
        price: 25),
    FDModel(
        image: 'assets/images/drinks/cans/red bull energy.jpg',
        text: 'RedBullEnergy',
        price: 43),
    FDModel(
        image: 'assets/images/drinks/cans/red bull zero.jpg',
        text: 'RedBullZero',
        price: 45),
    FDModel(
        image: 'assets/images/drinks/cans/red bull sugar free.jpg',
        text: 'RedBullSugarFree',
        price: 45),
    FDModel(
        image: 'assets/images/drinks/cans/red bull red.jpg',
        text: 'RedBullRed',
        price: 48),
    FDModel(
        image: 'assets/images/drinks/cans/red bull green.jpg',
        text: 'RedBullGreen',
        price: 48),
    FDModel(
        image: 'assets/images/drinks/cans/red bull apricot.jpg',
        text: 'RedBullApricot',
        price: 48),
    FDModel(
        image: 'assets/images/drinks/cans/red bull coconut.jpg',
        text: 'RedBullCoconut',
        price: 48),
    FDModel(
        image: 'assets/images/drinks/cans/red bull summer.jpg',
        text: 'RedBullSummer',
        price: 48),
    FDModel(
        image: 'assets/images/drinks/cans/red bull tropical.jpg',
        text: 'RedBullTropical',
        price: 48),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF464646),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Cans',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: ListView.builder(
        itemCount: modelCans.length,
        itemBuilder: (context, index) {
          return ItemCategory(models: modelCans[index]);
        },
      ),
    );
  }
}
