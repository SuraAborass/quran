import 'dart:convert';
import '../Clients/classification_client.dart';
import '../Models/classification.dart';
import '../Models/classification_ayah.dart';

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

  Future<List<ClassificationAyah>> getClassificationAyahs(id) async {
    var response = await client.getClassificationAyahs(id);
    if (response != "") {
      final data = json.decode(response).cast<Map<String, dynamic>>();
      return data.map<ClassificationAyah>((json) => ClassificationAyah.fromMap(json))
          .toList();
    }
    return [];
  }
}