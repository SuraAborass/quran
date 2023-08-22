import 'package:http/http.dart' as http;


class JuzClient {
  Future<dynamic> getJuz(number) async {
    var response = await http.get(Uri.parse("https://quran-z.000webhostapp.com/api/juza/ayas/$number"));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }
}