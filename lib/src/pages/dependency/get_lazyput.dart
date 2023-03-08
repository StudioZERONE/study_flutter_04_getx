import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter_04_getx/src/controller/dependency_controller.dart';

class GetLazyPut extends StatelessWidget {
  const GetLazyPut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get.lazyPut"),
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
            const Text("DependencyManagePage에서 Get.lazyput을 사용하게 되면 들어오는 페이지"),
            const SizedBox(
              height: 30,
            ),
            const Text("이 페이지에 들어와도"),
            const SizedBox(
              height: 5,
            ),
            const Text("GetxController를 상속받은 DependencyController는 생성하지 않고,"),
            const SizedBox(
              height: 5,
            ),
            const Text("(메모리에 올리지 않는다는 얘기)"),
            const SizedBox(
              height: 5,
            ),
            const Text("버튼을 눌러야 DependencyController를 생성하게 됨"),
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
