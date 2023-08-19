
class DataInSurah {
  final int number;
  final String name;
  final String englishName;
  final int numberOfAyahs;
  final String revelationType;

  DataInSurah({
    required this.number,
    required this.name,
    required this.englishName,
    required this.numberOfAyahs,
    required this.revelationType,
  });

  factory DataInSurah.fromMap(Map<String, dynamic> map) {
    return DataInSurah(
      number: map['number'] as int,
      name: map['name'],
      englishName: map['englishName'] ,
      numberOfAyahs:  map['numberOfAyahs'],
      revelationType: map['revelationType'],
    );
  }
}