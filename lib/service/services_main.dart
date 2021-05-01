import 'package:flutter/material.dart';
import 'package:flutter_getx/service/Service.dart';

import 'package:get/get.dart';

Future<void> main() async {
  await initServices();
  runApp(MyApp());
}

Future<void> initServices() async {
  print('Starting Services......');
  await Get.putAsync<Service>(() async => await Service());
  print('All services started..');
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Service',
      home: Scaffold(
        appBar: AppBar(
          title: Text('GetX Service'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text('Increment'),
                onPressed: () {
                  Get.find<Service>().incrementCounter();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
