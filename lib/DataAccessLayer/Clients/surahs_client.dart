import 'package:http/http.dart' as http;


class SurahsClient {
  Future<dynamic> getAllSurahs() async {
    var response = await http.get(Uri.parse("http://api.alquran.cloud/v1/surah"));
    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }
}