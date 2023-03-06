import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter_04_getx/src/controller/count_controller_with_reactive.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactive());
    return Scaffold(
      appBar: AppBar(
        title: const Text('반응형상태관리'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("WithReactive"),
            const SizedBox(
              height: 5,
            ),
            Obx(
              () => Text(
                "${Get.find<CountControllerWithReactive>().count.value}",
                style: const TextStyle(fontSize: 50),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            FilledButton(
              child: const Text('+'),
              onPressed: () {
                Get.find<CountControllerWithReactive>().increase();
              },
            ),
            const SizedBox(
              height: 5,
            ),
            //GetX는 값이 바뀌어야 update가 일어남.
            //provider는 값을 바꾸려고 하면 update가 일어남.. 굿!
            FilledButton(
              child: const Text('5로 변경'),
              onPressed: () {
                Get.find<CountControllerWithReactive>().puNumber(5);
              },
            ),
          ],
        ),
      ),
    );
  }
}
