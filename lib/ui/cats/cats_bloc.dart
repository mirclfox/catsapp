import 'package:bloc/bloc.dart';
import 'package:catsapp/models/breeds.dart';
import 'package:catsapp/services/breeds_api_provider.dart';
import 'package:catsapp/services/repository.dart';

import 'cats_event.dart';
import 'cats_state.dart';

class CatsBloc extends Bloc<CatsEvent, CatsState> {
  CatsBloc() : super(LoadingCatsState()) {
    on<GetCatsEvent>(_getCats);
  }

  void _getCats(GetCatsEvent event, Emitter<CatsState> emit) async {
    try {
      List<Breeds> listBreeds = await Repository.init.getBreeds();
      emit(LoadedCatsState(breeds: listBreeds));
    } catch (e) {
      emit(ErrorCatsState());
    }
  }
}
