import 'package:flutter/material.dart';
import 'package:flutter_getx/named_routes/home.dart';
import 'package:flutter_getx/named_routes/next_screen.dart';
import 'package:flutter_getx/named_routes/unkown_route.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => MyApp()),
        GetPage(name: '/home', page: () => Home()),
        GetPage(name: '/nextScreen', page: () => NextScreen()),
      ],
      unknownRoute: GetPage(name: '/notFound', page: () => UnknownRoute()),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Named Navigation'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text('Show HomePage'),
                onPressed: () async {
                  Get.toNamed('/home');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
