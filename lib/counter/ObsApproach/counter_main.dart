import 'package:flutter/material.dart';
import 'package:flutter_getx/counter/ObsApproach/counter_controller.dart';
import 'package:flutter_getx/named_routes/home.dart';
import 'package:flutter_getx/named_routes/next_screen.dart';
import 'package:flutter_getx/named_routes/unkown_route.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'State Management',
      home: Scaffold(
        appBar: AppBar(
          title: Text('State Management'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  'Count value is ${counterController.count}',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              RaisedButton(
                child: Text('Increment'),
                onPressed: () {
                  counterController.increment();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
