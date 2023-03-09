import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter_04_getx/src/controller/dependency_controller.dart';

class GetPut extends StatelessWidget {
  const GetPut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get.put / Get.putAsync"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              child: const Text("increase test"),
              onPressed: () {
                // Get.put 사용 시 동일한 hashCode를 반환하지만, Get.create를 사용하면 별개의 hashCode를 반환함
                // 새 인스턴스라는 얘기임
                // 그런데 Get.create를 사용한 후 뒤로 갔다가 다시 Get.put을 사용하면 별개의 hashCode를 반환함
                // 이건 버그같음
                // 2023-03-09 ZERONE
                print(Get.find<DependencyController>().hashCode);

                Get.find<DependencyController>().increase();
              },
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
                "DependencyManagePage에서 Get.put / Get.putAsync을 사용하게 되면 들어오는 페이지"),
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
            const SizedBox(
              height: 30,
            ),
            const Text(
                "Get.putAsync 사용 시, 전처리 등의 과정을 하고 비동기로 인스턴스 생성됨 (여기서는 5초 후 생성됨)"),
          ],
        ),
      ),
    );
  }
}
