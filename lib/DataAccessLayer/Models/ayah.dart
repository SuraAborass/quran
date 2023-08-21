
class Ayah {
  final String text;
  final int numberInSurah;
  final int id;
  final int number;
  final String name;

  Ayah({
    required this.text,
    required this.numberInSurah,
    required this.id,
    required this.number,
    required this.name,
  });

  factory Ayah.fromMap(Map<String, dynamic> map) {
    return Ayah(
      text: map['text'] ?? '',
      numberInSurah:  map['numberInSurah'] ?? 0,
      id: map['id'] as int ?? 0,
      number: map['aya_number'] as int,
      name: map['text_a'],

    );
  }
}