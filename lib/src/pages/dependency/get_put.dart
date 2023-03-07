import 'package:flutter/material.dart';

class GetPut extends StatelessWidget {
  const GetPut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("DependencyManagePage에서 Get.put을 사용하게 되면 들어오는 페이지"),
            Text("이 페이지에 들어오면,"),
            Text("즉시 GetxController를 상속받은 DependencyController를 생성하고,"),
            Text("페이지에서 나가면 DependencyController를 삭제하게 됨"),
          ],
        ),
      ),
    );
  }
}
