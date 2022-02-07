import 'package:catsapp/ui/cats/cats_bloc.dart';
import 'package:catsapp/ui/cats/cats_state.dart';
import 'package:catsapp/ui/main_layout/main_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DescriptionPage extends StatelessWidget {
  final String image;
  final String id;

  DescriptionPage({
    required this.image,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      page: Container(
        width: 200,
        height: 250.0,
        child: Hero(
          tag: id,
          child: Image.network(image),
        ),
      ),
    );
  }
}
