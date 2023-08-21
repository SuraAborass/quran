import 'dart:convert';
import '../Clients/Ajzaa_client.dart';
import '../Models/juz.dart';

class AjzaaRepo {
  AjzaaClient client = AjzaaClient();
  Future<List<Juz>> getAllAjzaa() async {
    var response = await client.getAllAjzaa();
    if (response != "") {
      final data = json.decode(response).cast<Map<String, dynamic>>();
      return data.map<Juz>((json) => Juz.fromMap(json))
          .toList();
    }
    return [];
  }
}