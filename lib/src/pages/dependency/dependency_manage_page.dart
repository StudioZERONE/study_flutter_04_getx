import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter_04_getx/src/controller/dependency_controller.dart';
import 'package:study_flutter_04_getx/src/pages/dependency/get_lazyput.dart';
import 'package:study_flutter_04_getx/src/pages/dependency/get_put.dart';

class DependencyManagePage extends StatelessWidget {
  const DependencyManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("의존성 주입"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              child: const Text("Get.put"),
              onPressed: () {
                Get.to(
                  () => const GetPut(),
                  binding: BindingsBuilder(() {
                    Get.put(DependencyController());
                  }),
                );
              },
            ),
            const SizedBox(
              height: 5,
            ),
            FilledButton(
              child: const Text("Get.lazyPut"),
              onPressed: () {
                Get.to(
                  () => const GetLazyPut(),
                  binding: BindingsBuilder(() {
                    Get.lazyPut<DependencyController>(
                        () => DependencyController());
                  }),
                );
              },
            ),
            const SizedBox(
              height: 5,
            ),
            FilledButton(
              child: const Text("Get.putAsync"),
              onPressed: () {
                Get.to(
                  () => const GetPut(),
                  binding: BindingsBuilder(() {
                    Get.putAsync<DependencyController>(() async {
                      await Future.delayed(const Duration(seconds: 5));
                      return DependencyController();
                    });
                  }),
                );
              },
            ),
            const SizedBox(
              height: 5,
            ),
            FilledButton(
              child: const Text("Get.create"),
              onPressed: () {
                Get.to(
                  () => const GetPut(),
                  binding: BindingsBuilder(() {
                    Get.create<DependencyController>(
                        () => DependencyController());
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
