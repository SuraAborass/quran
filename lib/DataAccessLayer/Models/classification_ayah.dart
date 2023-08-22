import 'ayat.dart';

class ClassificationAyah {

  final String sura;
  final Ayaht ayah;

  ClassificationAyah({
    required this.sura,
    required this.ayah

  });

  factory ClassificationAyah.fromMap(Map<String, dynamic> map) {
    return ClassificationAyah(
      sura: map['sura'],
      ayah: Ayaht.fromMap(map['ayah'])
    );
  }
}