import 'dart:convert';
import '../Clients/surah_client.dart';
import '../Models/ayah.dart';


class SurahRepo {
  SurahClient client = SurahClient();
  Future<List<Ayah>> getSurah(number) async {
    List<Ayah> ayahs= [];
    var response = await client.getSurah(number);
    print(jsonDecode(response)['data']['ayahs'] );
    if (response != "") {
      for(var element in jsonDecode(response)['data']['ayahs']){
        ayahs.add(Ayah.fromMap(element));
      }
      return ayahs;
    }
    return [];
  }
}