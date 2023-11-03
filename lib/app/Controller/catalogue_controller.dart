import 'package:get/get.dart';

class CatalogueController extends GetxController {
  // RxBool isSwitched = false.obs;

  List<String> imageDress = [
    "assets/images/T-Shirt1.png",
    "assets/images/T-Shirt2.png",
    "assets/images/Mug.png",
    "assets/images/combo2.png",
    "assets/images/Mug2.png",
    "assets/images/combo2.png",
  ];

  List<String> textTitle = [
    "Tshirt women",
    "Tshirt Men",
    "Mug Fm",
    "Dress Women",
    "Mug pottery",
    "Women dress"
  ];

  List<String> priceEach = ["₹799", "₹799", "₹399", "₹699", "₹449", "₹699"];

  // void catalogueSwitch(Value) {
  //   isSwitched.value = Value;
  //   update();
  // }
}
