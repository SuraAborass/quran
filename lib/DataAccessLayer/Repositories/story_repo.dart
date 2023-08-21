import 'dart:convert';
import '../Clients/story_client.dart';
import '../Models/story.dart';


class StoriesRepo {
  StoriesClient client = StoriesClient();
  Future<List<Story>> getStories(number) async {
    var response = await client.getStories(number);
    if (response != "") {
      final data = json.decode(response).cast<Map<String, dynamic>>();
      return data.map<Story>((json) => Story.fromMap(json))
          .toList();
    }
    return [];
  }
}