import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/Constants/get_routes.dart';
import 'package:quran/PresentationLayer/Widgets/appar.dart';

import '../../../BusinessLayer/Controllers/surahs_controller.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/surahs_item.dart';

class SurahsForStoriesScreen extends StatelessWidget {
  SurahsForStoriesScreen({Key? key}) : super(key: key);
  final SurahsController surahsController = Get.put(SurahsController());
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: mainAppBar(title: Text("السور المذكورة قصصها",style: UITextStyle.titleBold.copyWith(fontSize: 22))),
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
                          return InkWell(
                            onTap: (){
                              Get.toNamed(AppRoutes.stories,arguments: [surahsController.surahs[index]] );
                            },
                            child: SurahsItem(
                              surah: surahsController.surahs[index],
                            ),
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