import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }

  @override
  void onInit() {
    ever(count, (_) => print(count));
    super.onInit();
  }

  @override
  void onClose() {
    print('Dispose called');
    super.onClose();
  }

  void cleanUpTask() {
    print("Clean Up Task");
  }
}
