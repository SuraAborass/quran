import 'package:get/get.dart';
import '../PresentationLayer/Screens/Public/home_screen.dart';
import '../PresentationLayer/Screens/Public/splash_screen.dart';
import '../PresentationLayer/Screens/Public/surah_screen.dart';
import '../PresentationLayer/Screens/Public/surahs_screen.dart';
import '../PresentationLayer/Screens/classifications_screen.dart';
import 'get_routes.dart';

List<GetPage<dynamic>> getPages = [
  GetPage(
      name: AppRoutes.splashScreen,
      page: () => SplashScreen(),
      transition: Transition.leftToRightWithFade),
  GetPage(
      name: AppRoutes.homeScreen,
      page: () => const HomeScreen(),
      transition: Transition.leftToRightWithFade),
  GetPage(
      name: AppRoutes.allSurahs,
      page: () =>  SurahsScreen(),),
  GetPage(
    name: AppRoutes.surah,
    page: () =>  SurahScreen(),),
  GetPage(
    name: AppRoutes.classification,
    page: () =>  ClassificationsScreen(),),
];
