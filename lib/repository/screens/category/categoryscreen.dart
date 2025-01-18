import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  final TextEditingController searchController = TextEditingController();
  final grocerykitchen = [
    {"img": "image 41.png", "text": "Vegetables & \nFruits"},
    {"img": "image 42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image 44 (1).png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image 45 (1).png", "text": "Biscuits & \nBakery"}
  ];
  final secondgrocery = [
    {"img": "image 21.png", "text": "Dry Fruits &\n Cereals"},
    {"img": "image 22.png", "text": "Kitchen &\n Appliances"},
    {"img": "image 23.png", "text": "Tea & \nCoffees"},
    {"img": "image 24.png", "text": "Ice Creams & \nmuch more"},
    {"img": "image 25.png", "text": "Noodles & \nPacket Food"}
  ];
  final snacksanddrinks = [
    {"img": "image 31.png", "text": "Chips &\n Namkeens"},
    {"img": "image 32.png", "text": "Sweets & \nChocalates"},
    {"img": "image 33.png", "text": "Drinks & \nJuices"},
    {"img": "image 34.png", "text": "Sauces &\n Spreads"},
    {"img": "image 35.png", "text": "Beauty &\n Cosmetics"}
  ];
  final hosuehold = [
    {"img": "image 36.png"},
    {"img": "image 37.png"},
    {"img": "image 38.png"},
    {"img": "image 39.png"},
    {"img": "image 40.png"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 0,
          ),
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
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Uihelper.customText(
                  text: "Grocery & Kitchen",
                  color: Colors.black,
                  fontweight: FontWeight.bold,
                  fontsize: 14,
                  fontFamily: "bold")
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0XFFD9EBEB)),
                          child: Uihelper.customimage(
                              image: grocerykitchen[index]["img"].toString()),
                        ),
                      ),
                      Uihelper.customText(
                          text: grocerykitchen[index]["text"].toString(),
                          color: Colors.black,
                          fontweight: FontWeight.normal,
                          fontsize: 10)
                    ],
                  );
                },
                itemCount: grocerykitchen.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0XFFD9EBEB)),
                          child: Uihelper.customimage(
                              image: secondgrocery[index]["img"].toString()),
                        ),
                      ),
                      Uihelper.customText(
                          text: secondgrocery[index]["text"].toString(),
                          color: Colors.black,
                          fontweight: FontWeight.normal,
                          fontsize: 10)
                    ],
                  );
                },
                itemCount: secondgrocery.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Uihelper.customText(
                  text: "Snacks & Drinks",
                  color: Colors.black,
                  fontweight: FontWeight.bold,
                  fontsize: 14,
                  fontFamily: "bold"),
            ],
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0XFFD9EBEB)),
                          child: Uihelper.customimage(
                              image: snacksanddrinks[index]["img"].toString()),
                        ),
                      ),
                      Uihelper.customText(
                          text: snacksanddrinks[index]["text"].toString(),
                          color: Colors.black,
                          fontweight: FontWeight.normal,
                          fontsize: 10)
                    ],
                  );
                },
                itemCount: snacksanddrinks.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Uihelper.customText(
                  text: "Household Essentials",
                  color: Colors.black,
                  fontweight: FontWeight.bold,
                  fontsize: 14)
            ],
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 78,
                      width: 71,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0XFFD9EBEB)),
                      child: Uihelper.customimage(
                          image: hosuehold[index]["img"].toString()),
                    ),
                  );
                },
                itemCount: grocerykitchen.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
