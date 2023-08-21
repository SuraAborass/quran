import 'package:get/get.dart';
import '../../DataAccessLayer/Models/ayah.dart';
import '../../DataAccessLayer/Models/juz.dart';
import '../../DataAccessLayer/Repositories/juz_repo.dart';

class JuzController extends GetxController{
  JuzRepo repo = JuzRepo();
  List<Ayah> ayahs = [];
  final  Juz juz;
  JuzController(this.juz);
  var loading = false.obs;

  @override
  void onInit() async {
    await getJuz(juz.number);
    super.onInit();
  }

  Future<void> getJuz(int number) async {
    loading.value = true;
    ayahs = await repo.getJuz(number);
    update();
    loading.value = false;
  }
}