import 'package:http/http.dart' as http;


class SurahClient {
  Future<dynamic> getSurah(number) async {
    var response = await http.get(Uri.parse("http://api.alquran.cloud/v1/surah/$number"));
    //print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }
}