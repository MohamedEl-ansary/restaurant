import 'package:flutter/material.dart';

class Fdcategory extends StatelessWidget {
  Fdcategory({
    required this.ontap,
    required this.image,
    required this.ntext,
  });
  String? image;
  String? ntext;
  Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 100,
        color: Colors.grey,
        child: Row(
          children: [
            Container(
                width: 150, color: Colors.white, child: Image.asset(image!)),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                ntext!,
                style: TextStyle(color: Colors.white, fontSize: 35),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
