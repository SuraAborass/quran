import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Constants/colors.dart';
import '../../Constants/text_styles.dart';
import '../../DataAccessLayer/Models/classification.dart';

class ClassificationItem extends StatelessWidget {
  const ClassificationItem({Key? key,required this.classification}) : super(key: key);
final Classification classification;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2),
      width: Get.width,
      height: 80,
      decoration: BoxDecoration(
        color: UIColors.whitPrimary.withOpacity(.2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Text(classification.name,style: UITextStyle.titleBold.copyWith(fontSize: 20),overflow: TextOverflow.ellipsis)),
        ],
      ),
    );
  }
}
