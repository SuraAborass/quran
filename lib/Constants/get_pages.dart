import 'package:get/get.dart';
import '../PresentationLayer/Screens/Public/Ajzaa_screen.dart';
import '../PresentationLayer/Screens/Public/classification_ayahs_screen.dart';
import '../PresentationLayer/Screens/Public/home_screen.dart';
import '../PresentationLayer/Screens/Public/juz_screen.dart';
import '../PresentationLayer/Screens/Public/splash_screen.dart';
import '../PresentationLayer/Screens/Public/stories_screen.dart';
import '../PresentationLayer/Screens/Public/surah_screen.dart';
import '../PresentationLayer/Screens/Public/surahs_for_stories_screen.dart';
import '../PresentationLayer/Screens/Public/surahs_screen.dart';
import '../PresentationLayer/Screens/Public/classifications_screen.dart';
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
  GetPage(
    name: AppRoutes.ajzaa,
    page: () =>  AjzaaScreen(),),
  GetPage(
    name: AppRoutes.surahsForStories,
    page: () =>  SurahsForStoriesScreen(),),
  GetPage(
    name: AppRoutes.stories,
    page: () =>  StoriesScreen(),),
  GetPage(
    name: AppRoutes.classificationAyahs,
    page: () =>  ClassificationAyahs(),),

  GetPage(
    name: AppRoutes.juz,
    page: () =>  JuzScreen(),),

];
