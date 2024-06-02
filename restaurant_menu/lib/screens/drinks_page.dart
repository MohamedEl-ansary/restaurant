import 'package:flutter/material.dart';
import 'package:restaurant_menu/components/fdcategory.dart';
import 'package:restaurant_menu/screens/Ice_Drinks.dart';
import 'package:restaurant_menu/screens/can_drinks.dart';
import 'package:restaurant_menu/screens/hot_drinks.dart';
import 'package:restaurant_menu/screens/icecream_drinks.dart';
import 'package:restaurant_menu/screens/smoothie_drink.dart';

class DrinksPage extends StatelessWidget {
  const DrinksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF464646),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Drinks',
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
                      return HotDrinks();
                    },
                  ),
                );
              },
              image: 'assets/images/drinks/Hot_drinks.jpg',
              ntext: 'Hot Drinks'),
          SizedBox(
            height: 10,
          ),
          Fdcategory(
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return IceDrinks();
                    },
                  ),
                );
              },
              image: 'assets/images/drinks/ice_drinks.jpg',
              ntext: 'Ice Drinks'),
          SizedBox(
            height: 10,
          ),
          Fdcategory(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SmoothieDrink();
              }));
            },
            image: 'assets/images/drinks/smoothie.jpg',
            ntext: 'Smoothie',
          ),
          SizedBox(
            height: 10,
          ),
          Fdcategory(
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CanDrinks();
                }));
              },
              image: 'assets/images/drinks/cans.jpg',
              ntext: 'Cans'),
          SizedBox(
            height: 10,
          ),
          Fdcategory(
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return IcecreamDrinks();
                }));
              },
              image: 'assets/images/drinks/icecream.jpg',
              ntext: "IceCream"),
        ],
      ),
    );
  }
}
