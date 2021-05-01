import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  await GetStorage.init(); //Initialize Storage driver
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var emailEditingController = TextEditingController();
  var storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetStorage & Email Validation',
      home: Scaffold(
        appBar: AppBar(
          title: Text('GetStorage & Email Validation'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: emailEditingController,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: RaisedButton(
                  child: Text('Write'),
                  onPressed: () {
                    if (GetUtils.isEmail(emailEditingController.text)) {
                      storage.write('email', emailEditingController.text);
                    } else {
                      Get.snackbar(
                        'Incorrect Email',
                        'Provide Email in Valid Format',
                        colorText: Colors.white,
                        backgroundColor: Colors.red,
                        snackPosition: SnackPosition.BOTTOM,
                      );
                    }
                  },
                ),
              ),
              SizedBox(
                height: 8,
              ),
              RaisedButton(
                child: Text('Read'),
                onPressed: () {
                  print('The Email is ${storage.read('email')}');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
