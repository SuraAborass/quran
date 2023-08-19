import 'dart:convert';
import '../Clients/surahs_client.dart';
import '../Models/surah.dart';


class SurahsRepo {
  SurahsClient client = SurahsClient();
  Future<List<Surah>> getAllSurahs() async {
    var response = await client.getAllSurahs();
    if (response != "") {
      final data = json.decode(response.body) as List<Map<String, dynamic>>;
      return data.map<Surah>((json) => Surah.fromMap(json))
          .toList();
    }
    return [];
  }
}