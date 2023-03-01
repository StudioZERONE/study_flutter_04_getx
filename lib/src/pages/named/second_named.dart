import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter_04_getx/src/home.dart';

class SecondNamedPage extends StatelessWidget {
  const SecondNamedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Named Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              child: const Text('뒤로 이동'),
              onPressed: () {
                Get.back();
              },
            ),
            const SizedBox(
              height: 5,
            ),
            FilledButton(
              child: const Text('홈으로 이동'),
              onPressed: () {
                Get.to(() => const Home());
                Get.offAll(() => const Home());
              },
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
