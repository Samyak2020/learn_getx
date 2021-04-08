import 'package:get/get.dart';
import 'package:learn_getx/learning/pages/home/controller/home_controller.dart';
import 'package:learn_getx/learning/services/api_service.dart';

class HomeBinding extends Bindings{


  @override
  void dependencies() {
    // TODO: implement dependencies
   Get.put(ApiService());
   Get.put(HomeController());

  }

}