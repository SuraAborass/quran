import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/splash_controller.dart';
import '../../../Constants/colors.dart';


class SplashScreen extends StatelessWidget {
    SplashScreen({Key? key}) : super(key: key);
  final SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: UIColors.white,

        body: Center(
          child: Image.asset(
            'assets/images/graduation-hat.png',
            height: 290,
            width: 345,
          ),
        )
    );
  }
}
