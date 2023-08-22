
class Ayaht {
  final int id;
  final int number;
  final String name;

  Ayaht({
    required this.id,
    required this.number,
    required this.name,
  });

  factory Ayaht.fromMap(Map<String, dynamic> map) {
    return Ayaht(
      id: map['id'] as int ?? 0,
      number: map['aya_number'] as int ?? 0,
      name: map['text_a'] ?? '',

    );
  }
}