import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../BusinessLayer/Controllers/classification_ayahs_controller.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/appar.dart';
import '../../Widgets/classification_ayahs_item.dart';



class ClassificationAyahs extends StatelessWidget {
   ClassificationAyahs({Key? key}) : super(key: key);
final ClassificationAyahsController controller = Get.put(ClassificationAyahsController(Get.arguments[0]));
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: mainAppBar(title: Text("التصنيفات",style: UITextStyle.titleBold.copyWith(fontSize: 22),)),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GetBuilder(
                  init: controller,
                  builder: (context) {
                    return SizedBox(
                      height: Get.height-100 ,
                      child: ListView.builder(
                        itemCount: controller.classificationAyahs.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ClassificationAyahsItem(
                            classificationAyah: controller.classificationAyahs[index],
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
