
class Juz {
  final String name;
  final int id;
  final int number;

  Juz({
    required this.name,
    required this.id,
    required this.number
  });

  factory Juz.fromMap(Map<String, dynamic> map) {
    return Juz(
      name: map['name_juz'] ?? '',
      id:  map['id'] ?? 0,
      number:  map['number'] ?? 0,

    );
  }
}