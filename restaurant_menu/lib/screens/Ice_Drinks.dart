import 'package:flutter/material.dart';
import 'package:restaurant_menu/components/item_category.dart';
import 'package:restaurant_menu/models/fdmodel.dart';

class IceDrinks extends StatelessWidget {
  IceDrinks({super.key});
  final List<FDModel> modelIceDrink = [
    FDModel(
        image: 'assets/images/drinks/IceDrinks/ice cofee.jpg',
        text: 'ice cofee',
        price: 48),
    FDModel(
        image: 'assets/images/drinks/IceDrinks/ice caramel.jpg',
        text: 'iceCaramel',
        price: 50),
    FDModel(
        image: 'assets/images/drinks/IceDrinks/ice mocha.jpg',
        text: 'iceMocha',
        price: 50),
    FDModel(
        image: 'assets/images/drinks/IceDrinks/ice latte.jpg',
        text: 'iceLatte',
        price: 50),
    FDModel(
        image: 'assets/images/drinks/IceDrinks/ice tea lemon.jpg',
        text: 'iceTeaLemon',
        price: 46),
    FDModel(
        image: 'assets/images/drinks/IceDrinks/ice tea peach.jpg',
        text: 'iceTeaPeach',
        price: 45),
    FDModel(
        image: 'assets/images/drinks/IceDrinks/chocolate ice tea.jpg',
        text: 'chocolateIceTea',
        price: 48),
    FDModel(
        image: 'assets/images/drinks/IceDrinks/mojito.jpg',
        text: 'mojito',
        price: 50),
    FDModel(
        image: 'assets/images/drinks/IceDrinks/strawberry mojito.jpg',
        text: 'strawberryMojito',
        price: 65),
    FDModel(
        image: 'assets/images/drinks/IceDrinks/peach mojito.jpg',
        text: 'peachMojito',
        price: 65),
    FDModel(
        image: 'assets/images/drinks/IceDrinks/mexican.jpg',
        text: 'mexican',
        price: 80),
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
        itemCount: modelIceDrink.length,
        itemBuilder: (context, num) {
          return ItemCategory(
            models: modelIceDrink[num],
          );
        },
      ),
    );
  }
}
