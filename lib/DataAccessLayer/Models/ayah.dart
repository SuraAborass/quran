
import 'package:quran/DataAccessLayer/Models/surah.dart';

class Ayah {
  final String text;
  final int numberInSurah;
  final int number;
  final int juz;
  Surah? surah;

  Ayah({
    required this.text,
    required this.numberInSurah,
    required this.number,
    required this.juz,
  });

  factory Ayah.fromMap(Map<String, dynamic> map) {
    return Ayah(
      text: map['text'] ?? '',
      numberInSurah:  map['numberInSurah'] ?? 0,
      number: map['number'] as int ?? 0,
      juz: map['juz'] ?? 0,

    );
  }
}