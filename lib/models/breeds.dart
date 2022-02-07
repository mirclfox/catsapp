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
      image: json['image'] ?? {'url': 'https://i.pinimg.com/474x/c4/e9/51/c4e95143fd1cd97e581dca9032465c0d.jpg'},
    );
  }
}
