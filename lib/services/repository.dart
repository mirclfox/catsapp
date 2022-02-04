import 'package:catsapp/models/breeds.dart';

import 'breeds_api_provider.dart';

class Repository {
  Repository._privateConstructor();

  static Repository _init() => Repository._privateConstructor();
  static Repository get init => _init();

  BreedsApiProvider _getBreeds = BreedsApiProvider();
  Future<List<Breeds>> getBreeds() => _getBreeds.fetchBreeds();




}