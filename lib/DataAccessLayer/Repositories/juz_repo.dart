import 'dart:convert';
import '../Clients/juz_client.dart';
import '../Models/ayah.dart';


class JuzRepo {
  JuzClient client = JuzClient();
  Future<List<Ayah>> getJuz(number) async {
    List<Ayah> ayahs= [];
    var response = await client.getJuz(number);
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