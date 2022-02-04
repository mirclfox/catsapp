class Breeds {
  final String id;
  final String name;

  Breeds({
    required this.id,
    required this.name,
  });

  factory Breeds.fromJson(Map<String, dynamic> json) {
    return Breeds(
      id: json['id'],
      name: json['name'],
    );
  }
}
