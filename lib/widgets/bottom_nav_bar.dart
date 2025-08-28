import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:http_app/screens/food_app/food_home.dart';
import 'package:http_app/screens/food_app/order.dart';
import 'package:http_app/screens/food_app/profile.dart';
import 'package:http_app/screens/food_app/wallet.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int curentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late FoodHome homePage;
  late Order order;
  late Profile profile;
  late Wallet wallet;
  @override
  void initState() {
    homePage = FoodHome();
    order = Order();
    profile = Profile();
    wallet = Wallet();
    pages = [homePage, order, profile, wallet];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(microseconds: 1000),
        onTap: (int index) {
          curentTabIndex = index;
        },
        items: [
          Icon(Icons.home_outlined, color: Colors.white),
          Icon(Icons.apps, color: Colors.white),
          Icon(Icons.shopping_cart, color: Colors.white),
          Icon(Icons.settings, color: Colors.white),
        ],
      ),
      body: pages[curentTabIndex],
    );
  }
}
