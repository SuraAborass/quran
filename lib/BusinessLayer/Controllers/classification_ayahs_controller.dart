import 'package:get/get.dart';

import '../../DataAccessLayer/Models/classification.dart';
import '../../DataAccessLayer/Models/classification_ayah.dart';
import '../../DataAccessLayer/Repositories/classification_repo.dart';

class ClassificationAyahsController extends GetxController{
  ClassificationRepo repo = ClassificationRepo();
  List<ClassificationAyah> classificationAyahs = [];
  final Classification classification;

  ClassificationAyahsController(this.classification);
  var loading = false.obs;

  void onInit() async {
    await getClassificationAyahs(classification.id);
    super.onInit();
  }

  Future<void> getClassificationAyahs(int id) async {
    loading.value = true;
    classificationAyahs = await repo.getClassificationAyahs(id);
    update();
    loading.value = false;
  }


}