import 'package:flutter/material.dart';
import 'package:flutter_getx/getXControllerLifeCycle/counter_controller.dart';

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
      title: 'Controller Lifecycle',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Controller Lifecycle'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<CounterController>(
                // initState: (data) => counterController.increment(),
                // dispose: (_) => counterController.cleanUpTask(),
                builder: (controller) {
                  return Text(
                    'Count value is ${controller.count}',
                    style: TextStyle(fontSize: 25),
                  );
                },
              ),
              SizedBox(
                height: 16,
              ),
              // RaisedButton(
              //   child: Text('Increment'),
              //   onPressed: () {
              //     counterController.increment();
              //     //  Get.find<CounterController>().increment();
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
