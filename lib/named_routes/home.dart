import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Welcome to Home!',
              style: Theme.of(context).textTheme.headline4,
            ),
            RaisedButton(
              child: Text('Go NextScreen'),
              onPressed: () {
                Get.toNamed('/nextScreen');
              },
            ),
            RaisedButton(
              child: Text('Back to Main'),
              onPressed: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
