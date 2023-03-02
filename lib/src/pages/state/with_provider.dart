import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_flutter_04_getx/src/controller/count_controller_with_provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("WithProvider"),
          const SizedBox(
            height: 5,
          ),
          Consumer<CountControllerWithProvider>(builder: (_, snapshot, child) {
            return Text(
              "${snapshot.count}",
              style: const TextStyle(fontSize: 50),
            );
          }),
          const SizedBox(
            height: 5,
          ),
          FilledButton(
            child: const Text('+'),
            onPressed: () {
              //Get.toNamed("/firstnamed", arguments: "ZERONE"); //arguments 전달
              Provider.of<CountControllerWithProvider>(context, listen: false)
                  .increase(); //arguments 전달
            },
          ),
        ],
      ),
    );
  }
}
