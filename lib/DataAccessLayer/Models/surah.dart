
import 'data_in_surah.dart';

class Surah {
  final List<DataInSurah> surahs;

  Surah({required this.surahs});

  factory Surah.fromMap(Map<String, dynamic> map) {
    return Surah(
      surahs:   List<DataInSurah>.from(
        (map['data'] as List<dynamic>).map<DataInSurah>(
              (l) => DataInSurah.fromMap(l as Map<String, dynamic>),
        ),
      ),
    );
  }

}
