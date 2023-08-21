import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Constants/colors.dart';
import '../../Constants/text_styles.dart';
import '../../DataAccessLayer/Models/story.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({Key? key,required this.story}) : super(key: key);
final Story story;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 2),
          width: Get.width,
          height: 80,
          decoration: const BoxDecoration(
            color: UIColors.lightGreen,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(story.title,style: UITextStyle.titleBold.copyWith(fontSize: 22),)
            ],
          ),
        ),
        const SizedBox(height: 20,),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 2),
          width: Get.width,
          decoration: const BoxDecoration(
            color: UIColors.lightWhite,
          ),
          child: Wrap(
            children: [
              Text(story.textStory,style: UITextStyle.titleBold,),
            ],
          ),
        ),
      ],
    );
  }
}
