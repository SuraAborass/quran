import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/Constants/text_styles.dart';
import '../../Constants/colors.dart';
import '../../DataAccessLayer/Models/surah.dart';

class SurahsItem extends StatelessWidget {
  const SurahsItem({Key? key, required this.surah}) : super(key: key);
  final Surah surah;

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
            children: [
              Text(surah.number.toString(),style: UITextStyle.titleBold,),
              const SizedBox(width: 10,),
              Text(surah.name,style: UITextStyle.titleBold),
              const SizedBox(width: 90,),
              Text(surah.numberOfAyahs.toString(),style: UITextStyle.titleBold),
              const SizedBox(width: 20,),
              Text(surah.revelationType,style: UITextStyle.titleBold),
            ],
          ),
        ));
  }
}