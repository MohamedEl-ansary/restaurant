import 'package:flutter/material.dart';
import 'package:restaurant_menu/components/item_category.dart';
import 'package:restaurant_menu/models/fdmodel.dart';

class MeatFood extends StatefulWidget {
  const MeatFood({super.key});

  @override
  State<MeatFood> createState() => _MeatFoodState();
}

class _MeatFoodState extends State<MeatFood> {
  final List<FDModel> modelMeat = [
    FDModel(
        image: 'assets/images/foods/meet/Grilled meat.jpg',
        text: 'Grilled Meat',
        price: 450),
    FDModel(
        image: 'assets/images/foods/meet/Turkish meat casserole.jpg',
        text: 'Turkish Meat Casserole',
        price: 480),
    FDModel(
        image: 'assets/images/foods/meet/Meat fattah.jpg',
        text: 'Meat Fattah',
        price: 150),
    FDModel(
        image: 'assets/images/foods/meet/Mumbar.jpg',
        text: 'Mumbar',
        price: 350),
    FDModel(
        image: 'assets/images/foods/meet/Grilled kofta.jpg',
        text: 'Grilled Kofta',
        price: 500),
    FDModel(
        image: 'assets/images/foods/meet/Steak meat.jpg',
        text: 'Steak Meat',
        price: 480),
    FDModel(
        image: 'assets/images/foods/meet/Ruqaq with meat.jpg',
        text: 'Ruqaq With Meat',
        price: 210),
    FDModel(
        image: 'assets/images/foods/meet/Meat meal with rice.jpg',
        text: 'Meat Meal With Rice',
        price: 690),
    FDModel(
        image: 'assets/images/foods/meet/Alexandrian liver.jpg',
        text: 'Alexandrian Liver',
        price: 260),
    FDModel(
        image: 'assets/images/foods/meet/Liver with charcoal.jpg',
        text: 'Liver With Charcoal',
        price: 310),
    FDModel(
        image: 'assets/images/foods/meet/Alexandrian Hawawshi.jpg',
        text: 'Alexandrian Hawawshi',
        price: 150),
    FDModel(
        image: 'assets/images/foods/meet/Hawawshi.jpg',
        text: 'Hawawshi',
        price: 130),
    FDModel(
        image: 'assets/images/foods/meet/Meat sandwich.jpg',
        text: 'Meat Sandwich',
        price: 95),
    FDModel(
        image: 'assets/images/foods/meet/Single beef burger sandwich.jpg',
        text: 'Single Beef Burger Sandwich',
        price: 195),
    FDModel(
        image: 'assets/images/foods/meet/Double beef burger sandwich.jpg',
        text: 'Double Beef Burger Sandwich',
        price: 250),
    FDModel(
        image: 'assets/images/foods/meet/Meat pizza.jpg',
        text: 'Meat Pizza',
        price: 170),
    FDModel(
        image: 'assets/images/foods/meet/Mix meat pizza.jpg',
        text: 'Mix Meat Pizza',
        price: 240),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF464646),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Meat',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: ListView.builder(
        itemCount: modelMeat.length,
        itemBuilder: (context, index) {
          return ItemCategory(models: modelMeat[index]);
        },
      ),
    );
  }
}
