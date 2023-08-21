import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/juz_controller.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/appar.dart';
import '../../Widgets/juz_item.dart';

class JuzScreen extends StatelessWidget {
   JuzScreen({Key? key}) : super(key: key);
final JuzController juzController = Get.put(JuzController(Get.arguments[0]));
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: mainAppBar(title: Text(juzController.juz!.name,style: UITextStyle.titleBold.copyWith(fontSize: 22),)),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GetBuilder(
                  init: juzController,
                  builder: (context) {
                    return SizedBox(
                      height: Get.height-100 ,
                      child: ListView.builder(
                        itemCount: juzController.ayahs.length,
                        itemBuilder: (BuildContext context, int index) {
                          return JuzItem(
                            ayah: juzController.ayahs[index],
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
