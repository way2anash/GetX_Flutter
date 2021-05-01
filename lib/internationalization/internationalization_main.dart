import 'package:flutter/material.dart';
import 'package:flutter_getx/internationalization/language_controller.dart';
import 'package:flutter_getx/internationalization/messages.dart';

import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final LanguageController languageController = Get.put(LanguageController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      title: 'Internationalization',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Internationalization'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'hello'.tr,
                style: TextStyle(fontSize: 25, color: Colors.purple),
              ),
              RaisedButton(
                child: Text('Hindi'),
                onPressed: () {
                  languageController.changeLanguage('hi', 'IN');
                },
              ),
              SizedBox(
                height: 16,
              ),
              RaisedButton(
                child: Text('French'),
                onPressed: () {
                  languageController.changeLanguage('fr', 'FR');
                },
              ),
              SizedBox(
                height: 16,
              ),
              RaisedButton(
                child: Text('English'),
                onPressed: () {
                  languageController.changeLanguage('en', 'US');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
