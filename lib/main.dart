import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'BusinessLayer/Bindings/init_bindings.dart';
import 'Constants/get_pages.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quran',
      initialBinding: InitBinding(),
      getPages: getPages,
      //home:  LoginScreen(),
    );
  }
}
