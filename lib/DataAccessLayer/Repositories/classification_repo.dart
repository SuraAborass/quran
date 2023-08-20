import 'dart:convert';
import '../Clients/classification_client.dart';
import '../Models/classification.dart';

class ClassificationRepo {
  ClassificationClient client = ClassificationClient();
  Future<List<Classification>> getAllClassifications() async {
    var response = await client.getAllClassifications();
    if (response != "") {
      final data = json.decode(response).cast<Map<String, dynamic>>();
      return data.map<Classification>((json) => Classification.fromMap(json))
          .toList();
    }
    return [];
  }
}