import 'package:get/get.dart';

import '../../DataAccessLayer/Models/ayah.dart';
import '../../DataAccessLayer/Models/surah.dart';
import '../../DataAccessLayer/Repositories/surah_repo.dart';

class SurahController extends GetxController{
  SurahRepo repo = SurahRepo();
  List<Ayah> ayahs = [];
 final  Surah surah;
  SurahController(this.surah);

  var loading = false.obs;

  @override
  void onInit() async {
    await getSurah(surah.number);
    super.onInit();
  }

  Future<void> getSurah(int number) async {
    loading.value = true;
    ayahs = await repo.getSurah(number);
    update();
    loading.value = false;
  }
}