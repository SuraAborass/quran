import 'package:http/http.dart' as http;


class StoriesClient {
  Future<dynamic> getStories(number) async {
    var response = await http.get(Uri.parse("https://quran-z.000webhostapp.com/api/stories-sura/$number"));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }
}