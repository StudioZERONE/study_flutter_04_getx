import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter_04_getx/src/pages/normal/second.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              child: const Text('Second Page로 이동'),
              onPressed: () {
                // Get.to(const SecondPage()); // 페이지 이동 (강좌)
                Get.to(
                    () => const SecondPage()); // 페이지 이동 (20230227 시점 컴파일러 권고)
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
