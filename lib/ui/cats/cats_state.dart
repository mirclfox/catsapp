import 'package:catsapp/models/breeds.dart';


abstract class CatsState {
  List<Breeds>? breeds;
CatsState({this.breeds});
}

class LoadingCatsState extends CatsState{
}

class LoadedCatsState extends CatsState{
  List<Breeds>? breeds;
  LoadedCatsState({required this.breeds}) : super(breeds: breeds);
}

class ErrorCatsState extends CatsState{}
