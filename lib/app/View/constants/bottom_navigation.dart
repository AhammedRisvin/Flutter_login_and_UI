import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controller/bottom_navigation_controller.dart';

class ScreenbottomNavigationBar extends StatelessWidget {
  ScreenbottomNavigationBar({super.key});

  final BottomController bottomController = Get.put(BottomController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => bottomController.screens[bottomController.currentIndex.value],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white54,
          currentIndex: bottomController.currentIndex.value,
          onTap: (value) {
            bottomController.bottomnavigationcontroller(value);
          },
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
      ),
    );
  }
}
