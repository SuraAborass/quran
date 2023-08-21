import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Constants/colors.dart';
import '../../Constants/text_styles.dart';
import '../../DataAccessLayer/Models/juz.dart';

class AjzaaItem extends StatelessWidget {
  const AjzaaItem({Key? key,required this.juz}) : super(key: key);
final Juz juz;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 2),
        width: Get.width,
        height: 80,
        decoration: BoxDecoration(
          color: UIColors.whitPrimary.withOpacity(.2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(juz.name,style: UITextStyle.titleBold.copyWith(fontSize: 22)),
            ],
          ),
        ));
  }
}
