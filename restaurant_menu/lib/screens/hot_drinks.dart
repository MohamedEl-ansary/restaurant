import 'package:flutter/material.dart';
import 'package:restaurant_menu/components/item_category.dart';
import 'package:restaurant_menu/models/fdmodel.dart';

class HotDrinks extends StatefulWidget {
  HotDrinks({super.key});

  @override
  State<HotDrinks> createState() => _HotDrinksState();
}

class _HotDrinksState extends State<HotDrinks> {
  List<FDModel> modelHotDrink = [
    FDModel(
        image: 'assets/images/drinks/hotDrink/Espresso.jpg',
        text: 'Espresso',
        price: 48),
    FDModel(
        image: 'assets/images/drinks/hotDrink/cappuccino.jpg',
        text: 'cappuccino',
        price: 40),
    FDModel(
        image: 'assets/images/drinks/hotDrink/nescafe.jpg',
        text: 'nescafe',
        price: 40),
    FDModel(
        image: 'assets/images/drinks/hotDrink/Hot_chocolate.jpg',
        text: 'HotChocolate',
        price: 25),
    FDModel(
        image: 'assets/images/drinks/hotDrink/turkish coffee.jpg',
        text: 'turkishCoffee',
        price: 28),
    FDModel(
        image: 'assets/images/drinks/hotDrink/french coffee.jpg',
        text: 'frenchCoffee',
        price: 40),
    FDModel(
        image: 'assets/images/drinks/hotDrink/mochachino.jpg',
        text: 'mochachino',
        price: 48),
    FDModel(
        image: 'assets/images/drinks/hotDrink/latte.jpg',
        text: 'latte',
        price: 42),
    FDModel(
        image: 'assets/images/drinks/hotDrink/avocado.jpg',
        text: 'avocado',
        price: 50),
    FDModel(
        image: 'assets/images/drinks/hotDrink/americano.jpg',
        text: 'americano',
        price: 65),
    FDModel(
        image: 'assets/images/drinks/hotDrink/iraq tea.jpg',
        text: 'iraqTea',
        price: 15),
    FDModel(
        image: 'assets/images/drinks/hotDrink/lemon tea.jpg',
        text: 'lemonTea',
        price: 19),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF464646),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'HotDrinks',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: ListView.builder(
        itemCount: modelHotDrink.length,
        itemBuilder: (context, num) {
          return ItemCategory(
            models: modelHotDrink[num],
          );
        },
      ),
    );
  }
}
