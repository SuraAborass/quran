import 'package:get/get.dart';

import '../../DataAccessLayer/Models/juz.dart';
import '../../DataAccessLayer/Repositories/ajzaa_repo.dart';

class AjzaaController extends GetxController{
  AjzaaRepo repo = AjzaaRepo();
  List<Juz> juzs = [];

  var loading = false.obs;

  @override
  void onInit() async {
    await getAllAjzaa();
    super.onInit();
  }

  Future<void> getAllAjzaa() async {
    loading.value = true;
    juzs = await repo.getAllAjzaa();
    update();
    loading.value = false;
  }

}