import 'package:get/get.dart';

import '../../DataAccessLayer/Models/story.dart';
import '../../DataAccessLayer/Models/surah.dart';
import '../../DataAccessLayer/Repositories/story_repo.dart';

class StoriesController extends GetxController{
  StoriesRepo repo = StoriesRepo();
  List<Story> stories = [];
  final  Surah surah;
  StoriesController(this.surah);
  var loading = false.obs;

  @override
  void onInit() async {
    await getStories(surah.number);
    super.onInit();
  }

  Future<void> getStories(int number) async {
    loading.value = true;
    stories = await repo.getStories(number);
    update();
    loading.value = false;
  }
}