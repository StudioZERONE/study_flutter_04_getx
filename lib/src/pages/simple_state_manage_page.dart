import 'package:flutter/material.dart';
import 'package:study_flutter_04_getx/src/pages/state/with_getx.dart';
import 'package:study_flutter_04_getx/src/pages/state/with_provider.dart';

class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('단순상태관리'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Expanded(
              child: WithGetX(),
            ),
            Expanded(
              child: WithProvider(),
            ),
          ],
        ),
      ),
    );
  }
}
