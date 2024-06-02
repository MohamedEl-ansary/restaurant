import 'package:flutter/material.dart';
import 'package:restaurant_menu/components/fdcategory.dart';
import 'package:restaurant_menu/screens/chicken_food.dart';
import 'package:restaurant_menu/screens/fish_food.dart';
import 'package:restaurant_menu/screens/meat_food.dart';

class FoodPage extends StatelessWidget {
  const FoodPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF464646),
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            'Foods',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Fdcategory(
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MeatFood();
                      },
                    ),
                  );
                },
                image: 'assets/images/foods/meat.jpg',
                ntext: 'Meat'),
            SizedBox(
              height: 10,
            ),
            Fdcategory(
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ChickenFood();
                      },
                    ),
                  );
                },
                image: 'assets/images/foods/chicken.jpg',
                ntext: 'Chicken'),
            SizedBox(
              height: 10,
            ),
            Fdcategory(
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return FishFood();
                      },
                    ),
                  );
                },
                image: 'assets/images/foods/fish.jpg',
                ntext: 'Fish'),
          ],
        ));
  }
}
