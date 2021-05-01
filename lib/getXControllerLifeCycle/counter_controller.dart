import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0;

  void increment() async {
    await Future<int>.delayed(Duration(seconds: 3));
    this.count++;
    update();
  }

  @override
  void onInit() {
    print('Init called');
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
