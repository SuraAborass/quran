import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/surah_controller.dart';
import '../../Widgets/appar.dart';
import '../../Widgets/surah_item.dart';


class SurahScreen extends StatelessWidget {
   SurahScreen({Key? key}) : super(key: key);
final SurahController surahController =
          Get.put(SurahController(Get.arguments[0]));

  @override
  Widget build(BuildContext context) {

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: mainAppBar(context),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GetBuilder(
                  init: surahController,
                  builder: (context) {
                    return SizedBox(
                      height: Get.height-100 ,
                      child: ListView.builder(
                        itemCount: surahController.ayahs.length,
                        itemBuilder: (BuildContext context, int index) {
                          return SurahItem(
                            ayah: surahController.ayahs[index],
                          );
                        },
                      ),
                    );
                  }
              ),
            ),
          )),
    );
  }
}
