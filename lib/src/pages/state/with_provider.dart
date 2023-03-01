import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          const Text(
            "0",
            style: TextStyle(
              fontSize: 50,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          FilledButton(
            child: const Text('+'),
            onPressed: () {
              //Get.toNamed("/firstnamed", arguments: "ZERONE"); //arguments 전달
              Get.toNamed(
                "/firstnamed",
              ); //arguments 전달
            },
          ),
        ],
      ),
    );
  }
}
