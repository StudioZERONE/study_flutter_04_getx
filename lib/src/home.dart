import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter_04_getx/src/pages/normal/first.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('라우트 관리 홈'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: const Text('First Page로 이동'),
              onPressed: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (_) => const FirstPage())); // 페이지 이동 (원래 플러터)
                // Get.to(const FirstPage()); // 페이지 이동 (강좌)
                Get.to(() => const FirstPage()); // 페이지 이동 (20230227 시점 컴파일러 권고)
              },
            ),
          ],
        ),
      ),
    );
  }
}
