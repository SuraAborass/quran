import 'dart:convert';
import '../Clients/surahs_client.dart';
import '../Models/surah.dart';


class SurahsRepo {
  SurahsClient client = SurahsClient();
  Future<List<Surah>> getAllSurahs() async {
    List<Surah> surahs= [];
    var response = await client.getAllSurahs();
    print(jsonDecode(response)['data'] );
    if (response != "") {
      for(var element in jsonDecode(response)['data']){
        surahs.add(Surah.fromMap(element));
      }
      return surahs;
    }
    return [];
  }
}