import 'package:catsapp/models/breeds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cats_bloc.dart';
import 'cats_event.dart';

class CatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CatsBloc()..add(GetCatsEvent()),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    List<Breeds> listBreeds = BlocProvider.of<CatsBloc>(context).state.breeds;

    return Container(
      width: 200.0,
      height: 200.0,
      child: ListView.builder(
        itemCount: listBreeds.length,
        itemBuilder: (context, index) => Text(listBreeds[index].name),
      ),
    );
  }
}
