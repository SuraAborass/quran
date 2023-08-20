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
}