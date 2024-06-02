import 'package:flutter/material.dart';
import 'package:restaurant_menu/components/item_category.dart';
import 'package:restaurant_menu/models/fdmodel.dart';

class FishFood extends StatefulWidget {
  const FishFood({super.key});

  @override
  State<FishFood> createState() => _FishFoodState();
}

class _FishFoodState extends State<FishFood> {
  final List<FDModel> modelFish = [
    FDModel(
        image: 'assets/images/foods/fish/fish meal.jpg',
        text: 'Fish Meal',
        price: 350),
    FDModel(
        image: 'assets/images/foods/fish/fish fry.jpg',
        text: 'Fish Fry',
        price: 150),
    FDModel(
        image: 'assets/images/foods/fish/diamoun dfish fry.jpg',
        text: 'Diamound Fish Fry',
        price: 170),
    FDModel(
        image: 'assets/images/foods/fish/vetki fish fry.jpg',
        text: 'Vetki Fish Fry',
        price: 210),
    FDModel(
        image: 'assets/images/foods/fish/vetki fish batter fry.jpg',
        text: 'Vetki Fish Batter Fry',
        price: 230),
    FDModel(
        image: 'assets/images/foods/fish/vetki fish roll.jpg',
        text: 'Vetki Fish Roll',
        price: 240),
    FDModel(
        image: 'assets/images/foods/fish/fish fingers.jpg',
        text: 'Fish Fingers',
        price: 250),
    FDModel(
        image: 'assets/images/foods/fish/Grilled Fish.jpg',
        text: 'Grilled Fish',
        price: 155),
    FDModel(
        image: 'assets/images/foods/fish/dry chily fish.jpg',
        text: 'Dry Chily Fish',
        price: 145),
    FDModel(
        image: 'assets/images/foods/fish/Chinese fish.jpg',
        text: 'Chinese Fish',
        price: 190),
    FDModel(
        image: 'assets/images/foods/fish/Chinese sardines.jpg',
        text: 'Chinese Sardines',
        price: 185),
    FDModel(
        image: 'assets/images/foods/fish/Fried sardines.jpg',
        text: 'Fried Sardines',
        price: 175),
    FDModel(
        image: 'assets/images/foods/fish/Shrimp meal.jpg',
        text: 'Shrimp Meal',
        price: 450),
    FDModel(
        image: 'assets/images/foods/fish/Seafood soup.jpg',
        text: 'Seafood Soup',
        price: 370),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF464646),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Fish',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: ListView.builder(
        itemCount: modelFish.length,
        itemBuilder: (context, index) {
          return ItemCategory(models: modelFish[index]);
        },
      ),
    );
  }
}
