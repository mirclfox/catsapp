import 'package:catsapp/models/breeds.dart';
import 'package:catsapp/services/repository.dart';

class CatsState {
  List<Breeds> breeds;
  CatsState({required this.breeds});


  CatsState init() {
    return CatsState(breeds: []);
  }

  CatsState clone() {
    return CatsState(breeds: []);
  }

  CatsState fetchCats(List<Breeds> breeds){
    return CatsState(breeds: breeds);
  }

}
