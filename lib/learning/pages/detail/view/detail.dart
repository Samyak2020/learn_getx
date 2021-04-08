import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/learning/pages/home/controller/home_controller.dart';
import 'package:learn_getx/learning/pages/home/view/home.dart';
import 'package:learn_getx/learning/services/api_service.dart';

class DetailScreen extends StatelessWidget {

  final apiService = Get.find<ApiService>();
  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen"),
        leading: IconButton(icon: Icon(Icons.arrow_back),
            onPressed: (){
            Get.back();
           // print(apiService.fetchTextFromApi());
            print(homeController.count);
        }),
      ),
    );
  }
}
