import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Container(
              height: 210,
              width: double.infinity,
              color: Color(0XFFF7CB45),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Uihelper.customText(
                          text: "Blinkit in",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 15,
                          fontFamily: "bold"),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Uihelper.customText(
                          text: "16 minutes",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 20,
                          fontFamily: "bold")
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Uihelper.customText(
                          text: "HOME ",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 14),
                      Uihelper.customText(
                          text: "- Sahil Thipe, Ameerpet, Hyderabad -500016",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 14)
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              right: 20,
              bottom: 100,
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ),
            Positioned(
                bottom: 30,
                left: 20,
                child: Uihelper.CustomTextField(controller: searchController))
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Uihelper.customimage(image: "shopping-cart (1) 1.png"),
        SizedBox(
          height: 40,
        ),
        Uihelper.customText(
            text: "Reordering will be easy",
            color: Color(0XFF000000),
            fontweight: FontWeight.bold,
            fontsize: 16,
            fontFamily: "bold"),
        Uihelper.customText(
          text: "Items you order will show up here so you can buy",
          color: Color(0XFF000000),
          fontweight: FontWeight.bold,
          fontsize: 12,
        ),
        Uihelper.customText(
          text: "them again easily.",
          color: Color(0XFF000000),
          fontweight: FontWeight.bold,
          fontsize: 12,
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Uihelper.customText(
                text: "Bestsellers",
                color: Color(0XFF000000),
                fontweight: FontWeight.bold,
                fontsize: 16,
                fontFamily: "bold")
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Stack(
              children: [
                Uihelper.customimage(image: "milk.png"),
                Padding(
                  padding: EdgeInsets.only(top: 95, left: 65),
                  child: Uihelper.CustomButton(() {}),
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Stack(
              children: [
                Uihelper.customimage(image: "potato.png"),
                Padding(
                  padding: EdgeInsets.only(top: 95, left: 65),
                  child: Uihelper.CustomButton(() {}),
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Stack(
              children: [
                Uihelper.customimage(image: "image 46.png"),
                Padding(
                  padding: EdgeInsets.only(top: 95, left: 65),
                  child: Uihelper.CustomButton(() {}),
                )
              ],
            )
          ],
        ),
      ],
    ));
  }
}
