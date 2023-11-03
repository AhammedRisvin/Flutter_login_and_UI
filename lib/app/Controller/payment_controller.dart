import 'package:get/get.dart';

class PaymentController extends GetxController {
  RxInt isPressed = 0.obs;

  List<String> imageDress = [
    "assets/images/T-Shirt1.png",
    "assets/images/T-Shirt2.png",
    "assets/images/Mug.png",
    "assets/images/combo2.png",
  ];

  List<String> priceEach = [
    "₹799",
    "₹799",
    "₹399",
    "₹699",
  ];

  List<String> timeDate = [
    "jul 12, 02:06 PM",
    "Apr 26, 07:47 AM",
    "Apr 11, 10:54 AM",
    "Apr 02, 11:29 AM",
  ];

  List<String> orderNumber = [
    "Order #1688068",
    "Order #1457741",
    "Order #1408896",
    "Order #1369633",
  ];

  void buttonController(int value) {
    isPressed.value = value;
    update();
  }
}
