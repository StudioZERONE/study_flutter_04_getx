import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter_04_getx/src/controller/dependency_controller.dart';

class GetPut extends StatelessWidget {
  const GetPut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get.put"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              child: const Text("test"),
              onPressed: () {
                Get.find<DependencyController>().increase();
              },
            ),
            const SizedBox(
              height: 30,
            ),
            const Text("DependencyManagePage에서 Get.put을 사용하게 되면 들어오는 페이지"),
            const SizedBox(
              height: 30,
            ),
            const Text("이 페이지에 들어오면, (페이지에 접근하면)"),
            const SizedBox(
              height: 5,
            ),
            const Text("즉시 GetxController를 상속받은 DependencyController를 생성하고,"),
            const SizedBox(
              height: 5,
            ),
            const Text("버튼을 누르면 별도의 인스턴스를 생성하지 않음"),
            const SizedBox(
              height: 5,
            ),
            const Text("페이지에서 나가면 DependencyController를 삭제하게 됨"),
          ],
        ),
      ),
    );
  }
}
