import 'package:flutter/material.dart';
import '../../../Constants/colors.dart';


PreferredSizeWidget mainAppBar(
    {Widget? leading, List<Widget> actions = const [],title,backgroundColor}) {
  return AppBar(
    elevation: 0.0,
    centerTitle: true,
    title: title,
    backgroundColor: UIColors.green,
    leading:   Builder(builder: (context) {
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
  );
}