import 'package:flutter/material.dart';
import 'package:restaurant_menu/screens/foodanddrinks.dart';
import 'package:restaurant_menu/screens/num.dart';

class HomePage extends StatelessWidget {
  HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2B3238),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/homepage/home logo.jpg'),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            children: [
              CircleAvatar(
                radius: 122,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 120,
                  backgroundImage:
                      AssetImage('assets/images/homepage/logo.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  'El-ansary Restauant',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'Pacifico'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'Food & Drinks',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                color: Colors.white,
                thickness: 1,
                indent: 30,
                endIndent: 30,
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return FoodAndDrinks();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'menu',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              StatefulBuilder(builder: (cintext, setState) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                            ),
                            onPressed: () {
                              setState(() {});
                            },
                            child: Text(
                              'Cash',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                            ),
                            onPressed: () {
                              setState(() {
                                TotalCash = 0;
                                AllCach = 0;
                                print('$TotalCash');
                                print('$AllCach');
                              });
                            },
                            child: Text(
                              'reset',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'TotalCash : ',
                            style: TextStyle(color: Colors.white, fontSize: 32),
                          ),
                          Text(
                            '$TotalCash PE',
                            style: TextStyle(color: Colors.white, fontSize: 32),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Tax price : 14% : ',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Cash : ',
                            style: TextStyle(color: Colors.white, fontSize: 32),
                          ),
                          Text(
                            '$AllCach PE',
                            style: TextStyle(color: Colors.white, fontSize: 32),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
