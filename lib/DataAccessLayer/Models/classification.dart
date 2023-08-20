
class Classification {
  final String name;
  final int id;

  Classification({
    required this.name,
    required this.id,
  });

  factory Classification.fromMap(Map<String, dynamic> map) {
    return Classification(
      name: map['classification_name'],
      id:  map['id'] ?? 0,

    );
  }
}