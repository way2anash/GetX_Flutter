import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Welcome to dashboard!',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              '${Get.arguments}',
              style: Theme.of(context).textTheme.headline3,
            ),
            RaisedButton(
              child: Text('Go Back'),
              onPressed: () {
                Get.back(result: 'This is a result from dashboard!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
