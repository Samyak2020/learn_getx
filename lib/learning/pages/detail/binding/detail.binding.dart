import 'package:get/get.dart';
import 'package:learn_getx/learning/pages/detail/controller/detai_controller.dart';

class DetailBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.put(DetailController());
  }

}