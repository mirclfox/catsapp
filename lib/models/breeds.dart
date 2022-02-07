class Breeds {
  final String id;
  final String name;
  final Map<String, dynamic> image;

  Breeds({
    required this.id,
    required this.name,
    required this.image,
  });

  factory Breeds.fromJson(Map<String, dynamic> json) {
    return Breeds(
      id: json['id'],
      name: json['name'],
      image: json['image'] ?? {},
    );
  }
}
