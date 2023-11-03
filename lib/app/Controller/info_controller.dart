import 'package:get/get.dart';

class InfoController extends GetxController {
  RxBool isSwitched = false.obs;

  void switchcontroller(Value) {
    isSwitched.value = Value;
    update();
  }
}
