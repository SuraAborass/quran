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
        appBar: mainAppBar(context),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 50,),
              InkWell(
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
              //const SizedBox(height: 15,),
              Stack(
                children:  [
                  const Image(image: AssetImage('assets/images/luxury-gold-removebg-preview.png',),
                    width: 320,height: 190,),
                  Positioned.fill(
                      child: Align(alignment: Alignment.center,
                          child: Text("الأجزاء",style: UITextStyle.titleBold.copyWith(fontSize: 22),)))
                ],
              ),
              Stack(
                children:  [
                  const Image(image: AssetImage('assets/images/luxury-gold-removebg-preview.png',),
                    width: 320,height: 190,),
                  Positioned.fill(
                      child: Align(alignment: Alignment.center,
                          child: Text("التصنيفات",style: UITextStyle.titleBold.copyWith(fontSize: 22),)))
                ],
              ),

            ],
          ),
        ),


      ),
    );
  }
}
