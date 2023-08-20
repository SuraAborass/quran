import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'colors.dart';


class UITextStyle {
  static const titleBold = TextStyle(
      color: UIColors.black, fontSize: 18, fontFamily: "Hacen Tunisia Bd");

}

String arabicFont = "quran";
double arabicFontSize = 28;
double mushafFontSize = 40;

Future saveSetting() async{
  final prefs = await SharedPreferences.getInstance();
  await prefs.setInt("arabicFontSize", arabicFontSize.toInt());
  await prefs.setInt("mushafFontSize", mushafFontSize.toInt());

}

Future getSetting () async{
  try{
    final prefs = await SharedPreferences.getInstance();
    arabicFontSize = await prefs.getInt("arabicFontSize")!.toDouble();
    mushafFontSize = await prefs.getInt("mushafFontSize")!.toDouble();
  } catch(_){
     arabicFontSize = 28;
     mushafFontSize = 40;

  }

}
