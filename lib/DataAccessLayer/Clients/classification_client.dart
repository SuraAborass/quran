import 'package:http/http.dart' as http;


class ClassificationClient {
  Future<dynamic> getAllClassifications() async {
    var response = await http.get(Uri.parse("http://quran-z.000webhostapp.com/api/classification/show/all"));
    //print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }

  Future<dynamic> getClassificationAyahs(id) async {
    var response = await http.get(Uri.parse("https://quran-z.000webhostapp.com/api/classification/show/ayas/$id"));
    //print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }
}