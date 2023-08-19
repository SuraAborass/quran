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
        child: Row(
          children: [
            Text(surah.surahs[0]!.number.toString(),style: UITextStyle.titleBold,),
            Text(surah.surahs[0]!.name,style: UITextStyle.titleBold),
            Text(surah.surahs[0]!.numberOfAyahs.toString(),style: UITextStyle.titleBold),
            Text(surah.surahs[0]!.revelationType,style: UITextStyle.titleBold),
          ],
        ));
  }
}
