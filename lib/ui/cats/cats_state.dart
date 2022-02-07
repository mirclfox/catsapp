import 'package:catsapp/models/breeds.dart';

enum CatsStatus { initial, success, failure }

class CatsState {
  CatsStatus catsStatus;
  List<Breeds> breeds;

  CatsState({
    this.breeds = const <Breeds>[],
    this.catsStatus = CatsStatus.initial,
  });

  CatsState copyWith({
    CatsStatus? catsStatus,
    List<Breeds>? breeds,
  }) {
    return CatsState(
      breeds: breeds ?? this.breeds,
      catsStatus: catsStatus ?? this.catsStatus,
    );
  }
}
