import 'package:get/get.dart';

class GetxServcieTest extends GetxService {
  static GetxServcieTest get to => Get.find();
  RxInt count = 0.obs;

  void increase() {
    count++;
  }
}
