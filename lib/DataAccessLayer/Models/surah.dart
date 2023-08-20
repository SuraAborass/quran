
class Surah {
  //final int id;
  final int number;
  final String name;
  final String englishName;
  final int numberOfAyahs;
  final String revelationType;

  Surah({
    //required this.id,
    required this.number,
    required this.name,
    required this.englishName,
    required this.numberOfAyahs,
    required this.revelationType,
  });

  factory Surah.fromMap(Map<String, dynamic> map) {
    return Surah(
      //id: map['id'] as int,
      number: map['number'] as int,
      name: map['name'],
      englishName: map['englishName'] ,
      numberOfAyahs:  map['numberOfAyahs'],
      revelationType: map['revelationType'],
    );
  }
}