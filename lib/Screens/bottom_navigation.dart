import 'package:flutter/material.dart';
import 'package:login_app/Screens/cart.dart';
import 'package:login_app/Screens/catalogue.dart';
import 'package:login_app/Screens/dukaan_premium.dart';
import 'package:login_app/Screens/payments.dart';
import 'package:login_app/Screens/store.dart';

class ScreenbottomNavigationBar extends StatefulWidget {
  const ScreenbottomNavigationBar({super.key});

  @override
  State<ScreenbottomNavigationBar> createState() =>
      _ScreenBottomNavigationBarState();
}

class _ScreenBottomNavigationBarState extends State<ScreenbottomNavigationBar> {
  int currentIndex = 0;

  final screens = [
    ScreenStore(),
    ScreenCatalogue(),
    ScreenCart(),
    ScreenPayment(),
    ScreenPremium(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        currentIndex: currentIndex,
        onTap: (value) => setState(() => currentIndex = value),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: "Store",
            //  backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Catalogue",
            //  backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
            // backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: "Payment",
            // backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.workspace_premium),
            label: "Premium",
            // backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
