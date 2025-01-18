import 'package:blinkit_clone/repository/screens/cart/cartscreen.dart';
import 'package:blinkit_clone/repository/screens/category/categoryscreen.dart';
import 'package:blinkit_clone/repository/screens/home/homescreen.dart';
import 'package:blinkit_clone/repository/screens/print/printscreen.dart';
import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Bottomnavscreens extends StatefulWidget {
  const Bottomnavscreens({super.key});

  @override
  State<Bottomnavscreens> createState() => _BottomnavscreensState();
}

class _BottomnavscreensState extends State<Bottomnavscreens> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/home 1.png"),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Uihelper.customimage(image: "shopping-bag 1.png"),
              label: "Cart"),
          BottomNavigationBarItem(
              icon: Uihelper.customimage(image: "category 1.png"),
              label: "Category"),
          BottomNavigationBarItem(
            icon: Uihelper.customimage(image: "printer 1.png"),
            label: "Print",
          )
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
