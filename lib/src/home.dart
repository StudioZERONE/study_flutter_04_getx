import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter_04_getx/src/pages/dependency/dependency_manage_page.dart';
import 'package:study_flutter_04_getx/src/pages/normal/first.dart';
import 'package:study_flutter_04_getx/src/pages/reactive_state_manage_page.dart';
import 'package:study_flutter_04_getx/src/pages/simple_state_manage_page.dart';

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
            FilledButton(
              child: const Text('First Page로 이동'),
              onPressed: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (_) => const FirstPage())); // 페이지 이동 (원래 플러터)
                // Get.to(const FirstPage()); // 페이지 이동 (강좌)
                Get.to(() => const FirstPage()); // 페이지 이동 (20230227 시점 컴파일러 권고)
              },
            ),
            const SizedBox(
              height: 5,
            ),
            FilledButton(
              child: const Text('First Named Page로 이동'),
              onPressed: () {
                //Get.toNamed("/firstnamed", arguments: "ZERONE"); //arguments 전달
                Get.toNamed("/firstnamed", arguments: {
                  "name": "ZERONE",
                  "age": 22,
                }); //arguments 전달
              },
            ),
            const SizedBox(
              height: 5,
            ),
            FilledButton(
              onPressed: () {
                Get.to(() => const SimpleStateManagePage());
              },
              child: const Text("단순 상태 관리"),
            ),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => const ReactiveStateManagePage());
              },
              child: const Text("반응형 상태 관리"),
            ),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => const DependencyManagePage());
              },
              child: const Text("의존성 관리"),
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
