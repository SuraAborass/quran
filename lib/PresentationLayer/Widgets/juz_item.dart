import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Constants/colors.dart';
import '../../DataAccessLayer/Models/ayah.dart';

class JuzItem extends StatelessWidget {
  const JuzItem({Key? key,required this.ayah}) : super(key: key);
final Ayah ayah;
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(10),
      width: Get.width,
      height: 80,
      decoration: BoxDecoration(
        color: UIColors.whitPrimary.withOpacity(.2),
      ),
      child: Text(ayah.text+ " "+ayah.number.toString(),style: const TextStyle(fontSize: 16),),
    );
  }
}
