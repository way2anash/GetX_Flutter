import 'package:flutter/material.dart';
import 'package:flutter_getx/unnamed_routes/dashboard.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Snackbar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Snackbar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text('Show Dashboard'),
                onPressed: () async {
                  var data = await Get.to(Dashboard(), arguments: 'Anash');
                  print('Returned data is : $data');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
