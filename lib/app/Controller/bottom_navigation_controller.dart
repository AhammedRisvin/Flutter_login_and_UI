import 'package:get/get.dart';

import '../View/cart/cart.dart';
import '../View/catalogue/catalogue.dart';
import '../View/home/store.dart';
import '../View/payment/payments.dart';
import '../View/premium/dukaan_premium.dart';

class BottomController extends GetxController {
  RxInt currentIndex = 0.obs;
  final screens = [
    ScreenStore(),
    ScreenCatalogue(),
    const ScreenCart(),
    ScreenPayment(),
    const ScreenPremium(),
  ];

  void bottomnavigationcontroller(Value) {
    currentIndex.value = Value;
    update();
  }
}
