import 'package:flutter/material.dart';
import 'package:restaurant_menu/screens/drinks_page.dart';
import 'package:restaurant_menu/screens/food_page.dart';

class FoodAndDrinks extends StatelessWidget {
  const FoodAndDrinks();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Menu',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 375,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/homepage/food.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 260),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return FoodPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Foods',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 373,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/homepage/drink.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 260),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DrinksPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Drinks',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
/*,*/
