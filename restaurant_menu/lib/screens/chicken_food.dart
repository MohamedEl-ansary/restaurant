import 'package:flutter/material.dart';
import 'package:restaurant_menu/components/item_category.dart';
import 'package:restaurant_menu/models/fdmodel.dart';

class ChickenFood extends StatefulWidget {
  const ChickenFood({super.key});

  @override
  State<ChickenFood> createState() => _ChickenFoodState();
}

class _ChickenFoodState extends State<ChickenFood> {
  final List<FDModel> modelChicken = [
    FDModel(
        image: 'assets/images/foods/chicken/Grilled chicken meal.jpg',
        text: 'Grilled Chicken Meal',
        price: 300),
    FDModel(
        image: 'assets/images/foods/chicken/Fried chicken meal.jpg',
        text: 'Fried Chicken Meal',
        price: 350),
    FDModel(
        image: 'assets/images/foods/chicken/Chicken meal with potatoes.jpg',
        text: 'Chicken Meal With Potatoes',
        price: 290),
    FDModel(
        image: 'assets/images/foods/chicken/Chicken meal.jpg',
        text: 'Chicken Meal',
        price: 550),
    FDModel(
        image: 'assets/images/foods/chicken/Half chicken meal.jpg',
        text: 'Half Chicken Meal',
        price: 280),
    FDModel(
        image: 'assets/images/foods/chicken/A quarter chicken meal.jpg',
        text: 'Aquarter Chicken Meal',
        price: 130),
    FDModel(
        image: 'assets/images/foods/chicken/Chicken fattah.jpg',
        text: 'Chicken Fattah',
        price: 125),
    FDModel(
        image: 'assets/images/foods/chicken/Fattah Zinger.jpg',
        text: 'Fattah Zinger',
        price: 145),
    FDModel(
        image: 'assets/images/foods/chicken/Crispy fattah.jpg',
        text: 'Crispy Fattah',
        price: 145),
    FDModel(
        image: 'assets/images/foods/chicken/Chicken shawarma dish.jpg',
        text: 'Chicken Shawarma Dish',
        price: 140),
    FDModel(
        image: 'assets/images/foods/chicken/Maria chicken meal.jpg',
        text: 'Maria Chicken Meal',
        price: 110),
    FDModel(
        image: 'assets/images/foods/chicken/Chicken shawarma sandwich.jpg',
        text: 'Chicken shawarma sandwich',
        price: 90),
    FDModel(
        image: 'assets/images/foods/chicken/Zinger sandwich.jpg',
        text: 'Zinger Sandwich',
        price: 95),
    FDModel(
        image: 'assets/images/foods/chicken/Crispy sandwich.jpg',
        text: 'Crispy Sandwich',
        price: 95),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF464646),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Chicken',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: ListView.builder(
        itemCount: modelChicken.length,
        itemBuilder: (context, index) {
          return ItemCategory(models: modelChicken[index]);
        },
      ),
    );
  }
}
