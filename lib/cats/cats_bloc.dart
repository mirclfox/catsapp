import 'package:bloc/bloc.dart';
import 'package:catsapp/models/breeds.dart';
import 'package:catsapp/services/breeds_api_provider.dart';
import 'package:catsapp/services/repository.dart';

import 'cats_event.dart';
import 'cats_state.dart';

class CatsBloc extends Bloc<CatsEvent, CatsState> {
  CatsBloc() : super(CatsState(breeds: []).init()) {
    on<InitEvent>(_init);
    on<GetCatsEvent>(_getCats);
  }

  void _init(InitEvent event, Emitter<CatsState> emit) async {
    emit(state.clone());
  }

  void _getCats(GetCatsEvent event, Emitter<CatsState> emit) async {
   List<Breeds> listBreeds = await Repository.init.getBreeds();
   emit(state.fetchCats(listBreeds));

  }
}
