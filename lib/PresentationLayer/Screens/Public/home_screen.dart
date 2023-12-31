import 'package:flutter/material.dart';
import 'package:quran/Constants/colors.dart';
import 'package:get/get.dart';
import 'package:quran/Constants/get_routes.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/appar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: UIColors.primary,
        appBar: mainAppBar(title: Text("القرآن الكريم",style: UITextStyle.titleBold.copyWith(fontSize: 22),)),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //const SizedBox(height: 50,),
              Expanded(
                child: InkWell(
                  onTap: (){
                    Get.toNamed(AppRoutes.allSurahs);
                  },
                  child: Stack(
                    children:  [
                      const Image(image: AssetImage('assets/images/luxury-gold-removebg-preview.png',),
                      width: 320,height: 190,),
                      Positioned.fill(
                          child: Align(alignment: Alignment.center,
                              child: Text("السور",style: UITextStyle.titleBold.copyWith(fontSize: 22),)))
                    ],
                  ),
                ),
              ),
              //const SizedBox(height: 15,),
              Expanded(
                child: InkWell(
                  onTap: (){
                    Get.toNamed(AppRoutes.ajzaa);
                  },
                  child: Stack(
                    children:  [
                      const Image(image: AssetImage('assets/images/luxury-gold-removebg-preview.png',),
                        width: 320,height: 190,),
                      Positioned.fill(
                          child: Align(alignment: Alignment.center,
                              child: Text("الأجزاء",style: UITextStyle.titleBold.copyWith(fontSize: 22),)))
                    ],
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: (){
                    Get.toNamed(AppRoutes.classification);
                  },
                  child: Stack(
                    children:  [
                      const Image(image: AssetImage('assets/images/luxury-gold-removebg-preview.png',),
                        width: 320,height: 190,),
                      Positioned.fill(
                          child: Align(alignment: Alignment.center,
                              child: Text("التصنيفات",style: UITextStyle.titleBold.copyWith(fontSize: 22),)))
                    ],
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: (){
                    Get.toNamed(AppRoutes.surahsForStories);
                  },
                  child: Stack(
                    children:  [
                      const Image(image: AssetImage('assets/images/luxury-gold-removebg-preview.png',),
                        width: 320,height: 190,),
                      Positioned.fill(
                          child: Align(alignment: Alignment.center,
                              child: Text("قصص مختارة",style: UITextStyle.titleBold.copyWith(fontSize: 20),)))
                    ],
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: (){
                    //Get.toNamed(AppRoutes.surahsForStories);
                  },
                  child: Stack(
                    children:  [
                      const Image(image: AssetImage('assets/images/luxury-gold-removebg-preview.png',),
                        width: 320,height: 190,),
                      Positioned.fill(
                          child: Align(alignment: Alignment.center,
                              child: Text("معاني الكلمات",style: UITextStyle.titleBold.copyWith(fontSize: 20),)))
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),


      ),
    );
  }
}
