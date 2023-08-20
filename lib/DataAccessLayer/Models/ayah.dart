
class Ayah {
  final String text;
  final int numberInSurah;

  Ayah({
    required this.text,
    required this.numberInSurah,
  });

  factory Ayah.fromMap(Map<String, dynamic> map) {
    return Ayah(
      text: map['text'],
      numberInSurah:  map['numberInSurah'],

    );
  }
}