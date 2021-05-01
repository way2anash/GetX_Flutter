import 'package:flutter/material.dart';
import 'package:flutter_getx/binding/all_controller_binding.dart';
import 'package:flutter_getx/binding/home.dart';
import 'package:flutter_getx/binding/my_controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AllControllerBinding(),
      title: 'Binding',
      home: Scaffold(
        appBar: AppBar(
          title: Text('GetX Service'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                    'The value is ${Get.find<MyController>().count}',
                    style: TextStyle(fontSize: 25),
                  )),
              RaisedButton(
                child: Text('Increment'),
                onPressed: () {
                  Get.find<MyController>().increment();
                },
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: Text('Home'),
                onPressed: () {
                  Get.to(Home());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
