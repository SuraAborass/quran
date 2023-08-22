import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:quran/BusinessLayer/Controllers/surah_controller.dart';

import '../../DataAccessLayer/Models/ayah.dart';


class SearchAyahController extends GetxController {
  SurahController surahController = Get.put(SurahController(Get.arguments[0]));
  List<Ayah> ayahs = [];
  List<Ayah> searchAyahs = [];
  TextEditingController searchText = TextEditingController();
  var loading = false.obs;

  @override
  void onInit() {
    ayahs = surahController.ayahs;
    super.onInit();
  }

  void search(value) {
    print(" Search Results: " + value);
    print("product Length : " + ayahs.length.toString());
    searchAyahs = ayahs
        .where((element) =>
    element.text
        .toLowerCase()
        .contains(value.toString().toLowerCase()))
        .toList();
    print("products : " + searchAyahs.length.toString());
    update();
  }
}
