import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter_04_getx/src/controller/count_controller_with_getx.dart';

class WithGetX extends StatelessWidget {
  const WithGetX({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("WithGetX"),
          const SizedBox(
            height: 5,
          ),
          GetBuilder<CountControllerWithGetX>(builder: (controller) {
            return Text(
              "${controller.count}",
              style: const TextStyle(fontSize: 50),
            );
          }),
          const SizedBox(
            height: 5,
          ),
          FilledButton(
            child: const Text('+'),
            onPressed: () {
              Get.find<CountControllerWithGetX>().increase();
            },
          ),
        ],
      ),
    );
  }
}
