import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/Constants/get_routes.dart';
import '../../../BusinessLayer/Controllers/classification_controller.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/appar.dart';
import '../../Widgets/classification_item.dart';


class ClassificationsScreen extends StatelessWidget {
   ClassificationsScreen({Key? key}) : super(key: key);
final ClassificationController classificationController = Get.put(ClassificationController());
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
                  init: classificationController,
                  builder: (context) {
                    return SizedBox(
                      height: Get.height-100 ,
                      child: ListView.builder(
                        itemCount: classificationController.classifications.length,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: (){
                              Get.toNamed(AppRoutes.classificationAyahs,
                                  arguments: [classificationController.classifications[index]]);
                            },
                            child: ClassificationItem(
                              classification: classificationController.classifications[index],
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
