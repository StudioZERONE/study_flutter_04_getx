import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter_04_getx/src/home.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: const Text('뒤로 이동'),
              onPressed: () {
                Get.back();
                // Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('홈으로 이동'),
              onPressed: () {
                // Get.to(const Home()); // 페이지 이동 (강좌)
                Get.to(() => const Home()); // 페이지 이동 (20230227 시점 컴파일러 권고)
                // Navigator.of(context).pushAndRemoveUntil(
                //     MaterialPageRoute(builder: (_) => const Home()),
                //     (route) => false); //이동 히스토리를 모두 지운다 (원래 플러터)
                // Get.offAll(const Home()); //이동 히스토리를 모두 지운다 (강좌)
                Get.offAll(
                    () => const Home()); //이동 히스토리를 모두 지운다 (20230227 시점 컴파일러 권고)
              },
            ),
          ],
        ),
      ),
    );
  }
}
