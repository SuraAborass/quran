import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/PresentationLayer/Widgets/appar.dart';

import '../../../BusinessLayer/Controllers/surahs_controller.dart';
import '../../Widgets/surahs_item.dart';

class SurahsScreen extends StatelessWidget {
   SurahsScreen({Key? key}) : super(key: key);
final SurahsController surahsController = Get.put(SurahsController());
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
                  init: surahsController,
                  builder: (context) {
                    return SizedBox(
                        height: Get.height-100 ,
                        child: ListView.builder(
                          itemCount: surahsController.surahs.length,
                          itemBuilder: (BuildContext context, int index) {
                            return SurahsItem(
                                surah: surahsController.surahs[index],
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
