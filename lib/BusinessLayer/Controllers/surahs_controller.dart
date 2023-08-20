import 'package:get/get.dart';

import '../../DataAccessLayer/Models/data_in_surah.dart';
import '../../DataAccessLayer/Models/surah.dart';
import '../../DataAccessLayer/Repositories/surahs_repo.dart';

class SurahsController extends GetxController{
  SurahsRepo repo = SurahsRepo();
  List<Surah> surahs = [];
  List<DataInSurah> data = [];
  var loading = false.obs;

  @override
  void onInit() async {
    await getAllSurahs();
    super.onInit();
  }

  Future<void> getAllSurahs() async {
    loading.value = true;
    surahs = await repo.getAllSurahs();
    update();
    loading.value = false;
  }
}