import 'package:http/http.dart' as http;


class AjzaaClient {
  Future<dynamic> getAllAjzaa() async {
    var response = await http.get(Uri.parse("https://quran-z.000webhostapp.com/api/juza/show/all"));
    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }
}