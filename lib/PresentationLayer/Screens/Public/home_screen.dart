import 'package:flutter/material.dart';
import 'package:quran/Constants/colors.dart';

import '../../../Constants/text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: UIColors.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Image(image: AssetImage('assets/images/luxury-gold.png'),),
              Text("السور",style: UITextStyle.titleBold,)
            ],
          ),
          SizedBox(height: 15,),
          Stack(
            children: [
              Image(image: AssetImage('assets/images/luxury-gold.png'),),
              Text("التصنيفات",style: UITextStyle.titleBold,)
            ],
          ),

        ],
      ),


    );
  }
}
