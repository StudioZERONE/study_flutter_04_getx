import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:study_flutter_04_getx/src/controller/count_controller_with_getx.dart';
import 'package:study_flutter_04_getx/src/controller/count_controller_with_provider.dart';
import 'package:study_flutter_04_getx/src/pages/state/with_getx.dart';
import 'package:study_flutter_04_getx/src/pages/state/with_provider.dart';

class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithGetX()); // 이렇게 해 주면 아래 어디서든 사용할 수 있음
    return Scaffold(
      appBar: AppBar(
        title: const Text('단순상태관리'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              child: WithGetX(),
            ),
            Expanded(
              child: ChangeNotifierProvider<CountControllerWithProvider>(
                create: (_) => CountControllerWithProvider(),
                child: const WithProvider(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
