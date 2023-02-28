import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Named Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${Get.arguments}"), //arguments 전달받아 화면에 표시
            TextButton(
              child: const Text('Second Named Page로 이동'),
              onPressed: () {
                Get.offNamed(
                    "/secondnamed"); // 자신(페이지)의 히스토리를 지우면서 이동, 이렇게 간 페이지에서 뒤로가기 버튼을 누르면 홈으로 이동하게 됨
                // Get.offAllNamed("/secondnamed"); // 모든 히스토리를 지우면서 이동, 이렇게 간 페이지에서 뒤로가기 버튼을 누르면 홈으로 이동하게 됨
              },
            ),
          ],
        ),
      ),
    );
  }
}
