import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter_04_getx/src/home.dart';
import 'package:study_flutter_04_getx/src/pages/normal/first.dart';
import 'package:study_flutter_04_getx/src/pages/named/first_named.dart';
import 'package:study_flutter_04_getx/src/pages/normal/second.dart';
import 'package:study_flutter_04_getx/src/pages/named/second_named.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // 라우트 세팅 ---------------------------------
      // home: const Home(),
      initialRoute: "/",
      // 라우트 세팅: 기존 방식
      // routes: {
      //   "/": (context) => const Home(), // 이걸 넣으면 위의 home: const Home(), 을 빼야 함
      //   "/first": (context) => const FirstPage(),
      //   "/second": (context) => const SecondPage(),
      // },
      // 라우트 세팅: 강좌에서의 GetX 방식
      getPages: [
        // 이걸 넣으면 위의 home: const Home(), 을 빼야 함
        GetPage(name: "/", page: () => const Home()),
        // 페이지 전환에 줌 효과를 넣는 기능인데.. 안 되네..
        GetPage(
            name: "/first",
            page: () => const FirstPage(),
            transition: Transition.zoom),
        GetPage(
          name: "/firstnamed",
          page: () => const FirstNamedPage(),
        ),
        // 페이지 전환에 줌 효과를 넣는 기능인데.. 안 되네..
        GetPage(
            name: "/second",
            page: () => const SecondPage(),
            transition: Transition.zoom),
        GetPage(name: "/secondnamed", page: () => const SecondNamedPage()),
      ],
    );
  }
}
