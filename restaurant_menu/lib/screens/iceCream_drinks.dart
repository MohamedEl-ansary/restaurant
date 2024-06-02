import 'package:flutter/material.dart';
import 'package:restaurant_menu/components/item_category.dart';
import 'package:restaurant_menu/models/fdmodel.dart';

class IcecreamDrinks extends StatefulWidget {
  const IcecreamDrinks({super.key});

  @override
  State<IcecreamDrinks> createState() => _IcecreamDrinksState();
}

class _IcecreamDrinksState extends State<IcecreamDrinks> {
  final List<FDModel> modelIceCream = [
    FDModel(
        image: 'assets/images/drinks/IceCream/banana.jpg',
        text: 'Banana',
        price: 38),
    FDModel(
        image: 'assets/images/drinks/IceCream/peach.jpg',
        text: 'Peach',
        price: 45),
    FDModel(
        image: 'assets/images/drinks/IceCream/cramel.jpg',
        text: 'Cramel',
        price: 40),
    FDModel(
        image: 'assets/images/drinks/IceCream/coffee.jpg',
        text: 'Coffee',
        price: 40),
    FDModel(
        image: 'assets/images/drinks/IceCream/chocolate.jpg',
        text: 'Chocolate',
        price: 43),
    FDModel(
        image: 'assets/images/drinks/IceCream/Oreo.jpg',
        text: 'Oreo',
        price: 50),
    FDModel(
        image: 'assets/images/drinks/IceCream/lutes.jpg',
        text: 'Lutes',
        price: 60),
    FDModel(
        image: 'assets/images/drinks/IceCream/blueberry.jpg',
        text: 'BlueBerry',
        price: 55),
    FDModel(
        image: 'assets/images/drinks/IceCream/banana and strawberry.jpg',
        text: 'BananaAndStrawberry',
        price: 60),
    FDModel(
        image: 'assets/images/drinks/IceCream/chocolate and vanilla.jpg',
        text: 'ChocolateAndVanilla',
        price: 60),
    FDModel(
        image: 'assets/images/drinks/IceCream/coctail.jpg',
        text: 'Coctail',
        price: 80),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF464646),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'IceCream',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: ListView.builder(
        itemCount: modelIceCream.length,
        itemBuilder: (context, index) {
          return ItemCategory(models: modelIceCream[index]);
        },
      ),
    );
  }
}
