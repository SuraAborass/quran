
class Story {
  final String title;
  final String textStory;

  Story({
    required this.title,
    required this.textStory,
  });

  factory Story.fromMap(Map<String, dynamic> map) {
    return Story(
      title: map['title'],
      textStory:  map['text_story'],

    );
  }
}