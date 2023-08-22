import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/DataAccessLayer/Models/ayah.dart';

import '../../Constants/colors.dart';
import '../../Constants/text_styles.dart';


class SearchItem extends StatelessWidget {
  const SearchItem({Key? key,required this.ayah}) : super(key: key);
final Ayah ayah;
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
              Center(child: Text(ayah.surah!.name,style: UITextStyle.titleBold,)),
              const SizedBox(height: 20,),
              Text(ayah.text+" "+ayah.number.toString(),
                style: UITextStyle.titleBold,),


            ],
          ),
        ],
      ),
    );
  }
}
