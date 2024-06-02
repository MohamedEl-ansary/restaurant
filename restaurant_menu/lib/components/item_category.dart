import 'package:flutter/material.dart';
import 'package:restaurant_menu/models/fdmodel.dart';
import 'package:restaurant_menu/screens/num.dart';

class ItemCategory extends StatelessWidget {
  const ItemCategory({required this.models});
  final FDModel models;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: CircleAvatar(
              radius: 122,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage(models.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              models.text,
              style: TextStyle(
                  color: Colors.white, fontSize: 32, fontFamily: 'Pacifico'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Container(
              child: Row(
                children: [
                  Text(
                    'Price : ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                    ),
                  ),
                  Text(
                    models.salText!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                          onPressed: () {
                            TotalCash += models.price!;
                            AllCach += (models.price! + models.price! * 0.14);

                            print('$TotalCash');
                            print('$AllCach');
                          },
                          child: Text(
                            'Add1',
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                          onPressed: () {
                            TotalCash -= models.price!;
                            AllCach -= (models.price! + models.price! * 0.14);

                            if (TotalCash < 0) {
                              TotalCash = 0;
                            }
                            ;
                            if (AllCach < 0) {
                              AllCach = 0;
                            }
                            print('$TotalCash');
                            print('$AllCach');
                          },
                          child: Text(
                            'Remove',
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.white,
            thickness: 1,
            height: 20,
            endIndent: 20,
            indent: 20,
          )
        ],
      ),
    );
  }
}
