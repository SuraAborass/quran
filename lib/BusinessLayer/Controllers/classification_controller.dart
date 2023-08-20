import 'package:get/get.dart';
import 'package:quran/DataAccessLayer/Models/classification.dart';

import '../../DataAccessLayer/Repositories/classification_repo.dart';

class ClassificationController extends GetxController{
  ClassificationRepo repo = ClassificationRepo();
  List<Classification> classifications = [];

  var loading = false.obs;

  @override
  void onInit() async {
    await getClassifications();
    super.onInit();
  }

  Future<void> getClassifications() async {
    loading.value = true;
    classifications = await repo.getAllClassifications();
    update();
    loading.value = false;
  }
}