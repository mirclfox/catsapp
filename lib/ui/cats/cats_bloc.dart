import 'package:bloc/bloc.dart';
import 'package:catsapp/services/repository.dart';

import 'cats_event.dart';
import 'cats_state.dart';

class CatsBloc extends Bloc<CatsEvent, CatsState> {
  CatsBloc() : super(CatsState()) {
    on<GetCatsEvent>(_getCats);
  }

  void _getCats(GetCatsEvent event, Emitter<CatsState> emit) async {
    try {
      if (state.catsStatus == CatsStatus.initial) {
        final listBreeds = await Repository.init.getBreeds();
        return emit(
          state.copyWith(
            catsStatus: CatsStatus.success,
            breeds: listBreeds,
          ),
        );
      }
    } catch (_) {
      emit(state.copyWith(catsStatus: CatsStatus.failure));
    }
  }
}
