import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  var items = ['English', 'Hindi', 'French'];
  var dropDownValue = 'English'.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('localization'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'hello'.tr,
              style: TextStyle(fontSize: 20),
            ),
            DropdownButton(
              value: dropDownValue.value,
              icon: Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(value: items, child: Text(items));
              }).toList(),
              onChanged: (String? newValue) {
                dropDownValue.value = newValue!;
                switch (newValue) {
                  case 'English':
                    {
                      controller.changeLanguage('en', 'EN');
                      break;
                    }
                  case 'Hindi':
                    {
                      controller.changeLanguage('hi', 'HI');
                      break;
                    }
                  case 'French':
                    {
                      controller.changeLanguage('fr', 'FR');
                      break;
                    }
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
