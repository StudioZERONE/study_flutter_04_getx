import 'package:get/get.dart';

enum NUM { FIRST, SECOND }

class CountControllerWithReactive extends GetxController {
  RxInt count = 0.obs;
  RxDouble dbl = 0.0.obs;
  RxString value = "".obs;
  Rx<NUM> nums = NUM.FIRST.obs;

  void increase() {
    count++;
  }

  void puNumber(int value) {
    count(value);
  }

  @override
  void onInit() {
    ever(count, (_) => print("매번 호출"));
    once(count, (_) => print("한번만 호출"));
    debounce(count, (_) => print("마지막 변경에 한번만 호출"),
        time: const Duration(seconds: 1));
    interval(count, (_) => print("변경되고 있는 동안 1초마다 호출"),
        time: const Duration(seconds: 1));
    super.onInit();
  }
}
