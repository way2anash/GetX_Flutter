import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UnknownRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error 404'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Oops! Page Not Found',
              style: Theme.of(context).textTheme.headline4,
            ),
            RaisedButton(
              child: Text('Go to Main'),
              onPressed: () {
                Get.to('/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
