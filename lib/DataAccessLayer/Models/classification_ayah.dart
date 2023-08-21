
import 'ayah.dart';

class ClassificationAyah {

  final String sura;
  final Ayah ayah;

  ClassificationAyah({
    required this.sura,
    required this.ayah

  });

  factory ClassificationAyah.fromMap(Map<String, dynamic> map) {
    return ClassificationAyah(
      sura: map['sura'],
      ayah: Ayah.fromMap(map['ayah'])
    );
  }
}