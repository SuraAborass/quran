import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/Constants/get_routes.dart';
import '../../../BusinessLayer/Controllers/Ajzaa_controller.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/ajzaa_item.dart';
import '../../Widgets/appar.dart';

class AjzaaScreen extends StatelessWidget {
   AjzaaScreen({Key? key}) : super(key: key);
final AjzaaController ajzaaController = Get.put(AjzaaController());

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: mainAppBar(title: Text("الأجزاء",style: UITextStyle.titleBold.copyWith(fontSize: 22),)),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GetBuilder(
                  init: ajzaaController,
                  builder: (context) {
                    return SizedBox(
                      height: Get.height-100 ,
                      child: ListView.builder(
                        itemCount: 30,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: (){
                              Get.toNamed(AppRoutes.juz,arguments: [ajzaaController.juzs[index]]);

                            },
                            child: AjzaaItem(
                              juz: ajzaaController.juzs[index],
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
