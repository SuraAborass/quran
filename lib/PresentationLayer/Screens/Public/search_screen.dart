import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/Constants/colors.dart';
import '../../../BusinessLayer/Controllers/search_controller.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/appar.dart';
import '../../Widgets/search_item.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);
  final SearchAyahController searchController = Get.put(SearchAyahController());

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: UIColors.primary,
          appBar: mainAppBar(),
          body: GetBuilder(
              init: searchController,
              builder: (_) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        autofocus: true,
                        autocorrect: true,
                        style: UITextStyle.titleBold.apply(fontWeightDelta: -5),
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 5),
                        ),
                        controller: searchController.searchText,
                        onChanged: (value) {
                          searchController.search(value);
                        },
                      ),
                    ),
                    if (searchController.searchAyahs.isNotEmpty)
                      const SizedBox(
                        height: 10,
                      ),
                    Flexible(
                        child: searchController.searchAyahs.isNotEmpty
                            ? SizedBox(
                                width: double.infinity,
                                height: Get.height - 200,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount:
                                        searchController.searchAyahs.length,
                                    itemBuilder: (_, int index) {
                                      return SearchItem(
                                        ayah:
                                            searchController.searchAyahs[index],
                                      );
                                    }),
                              )
                            : const Center(
                                child: Text(
                                  'لايوجد نتائج!',
                                  style: UITextStyle.titleBold,
                                ),
                              ))
                  ],
                );
              }),
        ));
  }
}
