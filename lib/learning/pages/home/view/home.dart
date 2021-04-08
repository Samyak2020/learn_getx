import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/learning/pages/detail/view/detail.dart';
import 'package:learn_getx/learning/pages/home/controller/home_controller.dart';
import 'package:learn_getx/learning/services/api_service.dart';

class HomeScreen extends StatelessWidget {

  final apiService = Get.find<ApiService>();
  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is home screen",
              style: TextStyle(fontSize: 24.0)),
            FlatButton(
                color: Colors.yellow,
                onPressed: (){
                  //Get.to(DetailScreen());
                  Get.toNamed('/detail');
                  print(apiService.fetchTextFromApi());
                },
                child: Text("Go to detail")),

            SizedBox(
              height: 50.0,
            ),

            // Obx((){
            //   return Text("Count change from Home Controller ${homeController.count}",
            //       textAlign: TextAlign.center,
            //       style: TextStyle(fontSize: 24.0, ));
            // }),

            Obx(()=> Text("Count change from Home Controller ${homeController.count}",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0, )),),

            FlatButton(
              color: Colors.yellow,
                onPressed: (){
                homeController.increment();
            },
                child: Text("+")),
            FlatButton(
              color: Colors.yellow,
                onPressed: (){
                homeController.decrement();
            },
                child: Text("-")),

            SizedBox(
              height: 50.0,
            ),

            FlatButton(
              color: Colors.yellow,
                onPressed: (){
                //Get.defaultDialog(title: 'this is a dialog');
                Get.snackbar('This is title', 'this is a snackbar msg');
            },
                child: Text("Show Dialog")),
          ],
        ),
      ),
    );
  }
}
