import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Constants/colors.dart';
import '../../DataAccessLayer/Models/ayah.dart';

class SurahItem extends StatelessWidget {
  const SurahItem({Key? key,required this.ayah}) : super(key: key);
final Ayah ayah;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 80,
      decoration: BoxDecoration(
        color: UIColors.whitPrimary.withOpacity(.2),
      ),
      child: Text(ayah.text),
    );
  }
}
