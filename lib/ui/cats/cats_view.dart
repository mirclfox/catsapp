import 'package:catsapp/models/breeds.dart';
import 'package:catsapp/res/image_assets.dart';
import 'package:catsapp/ui/cats/cats_state.dart';
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
    return BlocBuilder<CatsBloc, CatsState>(
      builder: (context, state) {
        switch (state.catsStatus) {
          case CatsStatus.success:
            return SizedBox(
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: state.breeds.length,
                itemBuilder: (BuildContext context, int index) => Stack(
                  children: [
                    Container(
                      width: 200.0,
                      height: 200.0,
                      child: FadeInImage.assetNetwork(
                        placeholder: ImageAssets.nullCat,
                        image: state.breeds[index].image['url'],
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      child: Container(
                        height: 50.0,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                          child: Text(
                            state.breeds[index].name,
                            style: TextStyle(color: Colors.white, fontSize: 19.0),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          case CatsStatus.failure:
            return const Center(
              child: Text('Failed to fetch cats'),
            );
          default:
            return const Center(
              child: CircularProgressIndicator(),
            );
        }
      },
    );
  }
}
