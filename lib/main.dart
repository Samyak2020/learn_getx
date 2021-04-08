import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/learning/pages/detail/binding/detail.binding.dart';
import 'package:learn_getx/learning/pages/detail/view/detail.dart';
import 'package:learn_getx/learning/pages/home/binding/home_binding.dart';
import 'package:learn_getx/learning/pages/home/view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: [
        GetPage(name: '/home', page: ()=>HomeScreen(), binding: HomeBinding()),
        GetPage(name: '/detail', page: ()=>DetailScreen(), binding: DetailBinding()),
      ],
      initialRoute: '/home',
    );
  }
}

