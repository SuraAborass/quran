import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Constants/colors.dart';
import '../../Constants/text_styles.dart';
import '../../DataAccessLayer/Models/classification_ayah.dart';

class ClassificationAyahsItem extends StatelessWidget {
  const ClassificationAyahsItem({Key? key,required this.classificationAyah}) : super(key: key);
final ClassificationAyah classificationAyah;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: EdgeInsets.all(8.0),
      width: Get.width,
      decoration: const BoxDecoration(
        color: UIColors.whitPrimary,
      ),
      child: Wrap(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(child: Text(classificationAyah.sura,style: UITextStyle.titleBold,)),
              const SizedBox(height: 20,),
              Text(classificationAyah.ayah.name+" "+classificationAyah.ayah.number.toString(),
                style: UITextStyle.titleBold,),


            ],
          ),
        ],
      ),
    );
  }
}
