import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:internationalizations/app/utils/messages.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      translations: Messages(),
      locale: Locale('un', 'US'),
      fallbackLocale: Locale('un', 'US'),
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
