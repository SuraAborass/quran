import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/stories_controller.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/appar.dart';
import '../../Widgets/story_item.dart';

class StoriesScreen extends StatelessWidget {
   StoriesScreen({Key? key}) : super(key: key);
final StoriesController storiesController = Get.put(StoriesController(Get.arguments[0]));

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: mainAppBar(title: Text("القصص في سورة ${storiesController.surah.name}",style: UITextStyle.titleBold)),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GetBuilder(
                  init: storiesController,
                  builder: (context) {
                    return SizedBox(
                      height: Get.height-100 ,
                      child: ListView.builder(
                        itemCount: storiesController.stories.length,
                        itemBuilder: (BuildContext context, int index) {
                          return StoryItem(
                            story: storiesController.stories[index],
                          );
                        },
                      ),
                    );
                  }
              ),
            ),
          )),
    );
  }
}
