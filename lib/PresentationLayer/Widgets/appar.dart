import 'package:flutter/material.dart';
import '../../../Constants/colors.dart';
import '../../Constants/text_styles.dart';

PreferredSizeWidget mainAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: UIColors.green,
    elevation: 0.0,
    title:  Text(
      "القرآن الكريم",
      style: UITextStyle.titleBold.copyWith(fontSize: 22),
    ),
    centerTitle: true,
    leading: Builder(builder: (context) {
      return IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(
            Icons.dehaze_outlined,
            size: 30,
            color: UIColors.white,
          ));
    }),
    actions: const [
      /* Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(top: 14.0,left: 14),
          child: Image.asset(
            'assets/images/logo.png',
          ),
        ),
      ) */
    ],
  );
}
