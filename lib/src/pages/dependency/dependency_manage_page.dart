import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter_04_getx/src/controller/dependency_controller.dart';
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
              child: const Text("GetPut"),
              onPressed: () {
                Get.to(
                  const GetPut(),
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
              child: const Text(""),
              onPressed: () {},
            ),
            const SizedBox(
              height: 5,
            ),
            FilledButton(
              child: const Text(""),
              onPressed: () {},
            ),
            const SizedBox(
              height: 5,
            ),
            FilledButton(
              child: const Text(""),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
