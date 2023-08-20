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
        height: Get.height,
        child: SizedBox(
          height: Get.height-100,
          child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              shrinkWrap: true,
              itemCount: surah.surahs.length,
              itemBuilder: (context,index){
                return Container(
                    decoration:  BoxDecoration(
                      color: UIColors.whitPrimary.withOpacity(.5),
                    ),
                    //margin: const EdgeInsets.only(top: 23),
                    height: 42,
                    child: surahs(context,index));
              }
          ),
        ));
  }

  Widget surahs (BuildContext context,index) {
    return Row(
      children: [
            Text(
              surah.surahs[0]!.number.toString(),
              style: UITextStyle.titleBold,
            ),
            Text(surah.surahs[0]!.name, style: UITextStyle.titleBold),
            Text(surah.surahs[0]!.numberOfAyahs.toString(),
                style: UITextStyle.titleBold),
            Text(surah.surahs[0]!.revelationType,
                style: UITextStyle.titleBold),
      ],
    );
  }
}

