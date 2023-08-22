
class JuzAyah {
  final String text;
  final int numberInSurah;
  //final int id;
  final int number;
  final String name;

  JuzAyah({
    required this.text,
    required this.numberInSurah,
    //required this.id,
    required this.number,
    required this.name,
  });

  factory JuzAyah.fromMap(Map<String, dynamic> map) {
    return JuzAyah(
      text: map['text'] ?? '',
      numberInSurah:  map['numberInSurah'] ?? 0,
      //id: map['id'] as int ?? 0,
      number: map['number'] as int ?? 0,
      name: map['text_a'] ?? '',

    );
  }
}