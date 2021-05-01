import 'package:flutter_getx/binding/home_controller.dart';
import 'package:flutter_getx/binding/my_controller.dart';
import 'package:get/get.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController>(() => MyController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
