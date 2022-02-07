import 'package:catsapp/res/const.dart';

class Breeds {
  final String id;
  final String name;
  final Map<String, dynamic> image;
  final String description;
  final String temperament;
  final String dogFriendly;
  final String energyLevel;

  Breeds({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.temperament,
    required this.dogFriendly,
    required this.energyLevel,
  });

  factory Breeds.fromJson(Map<String, dynamic> json) {
    return Breeds(
      id: json['id'] ?? 'error id',
      name: json['name'] ?? 'Error name cat',
      image: json['image'] ?? {'url': errorImage},
      description: json['description'] ?? 'No data',
      temperament: json['temperament'] ?? 'No data',
      dogFriendly: json['dog_friendly'].toString(),
      energyLevel: json['energy_level'].toString(),

    );
  }
}
