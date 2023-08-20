import 'dart:convert';
import '../Clients/surah_client.dart';
import '../Models/ayah.dart';


class SurahRepo {
  SurahClient client = SurahClient();
  Future<List<Ayah>> getSurah(number) async {
    List<Ayah> surahs= [];
    var response = await client.getSurah(number);
    print(jsonDecode(response)['ayahs'] );
    if (response != "") {
      for(var element in jsonDecode(response)['ayahs']){
        surahs.add(Ayah.fromMap(element));
      }
      return surahs;
    }
    return [];
  }
}