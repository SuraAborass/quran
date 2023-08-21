import 'package:http/http.dart' as http;


class JuzClient {
  Future<dynamic> getJuz(number) async {
    var response = await http.get(Uri.parse("http://api.alquran.cloud/v1/juz/$number/quran-uthmani"));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }
}