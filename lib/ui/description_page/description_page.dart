import 'package:catsapp/ui/cats/cats_bloc.dart';
import 'package:catsapp/ui/cats/cats_state.dart';
import 'package:catsapp/ui/main_layout/main_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DescriptionPage extends StatelessWidget {
  final String name;
  final String image;
  final String id;
  final String description;
  final String temperament;
  final String dogFriendly;
  final String energyLevel;

  DescriptionPage({
    required this.image,
    required this.id,
    required this.description,
    required this.temperament,
    required this.dogFriendly,
    required this.energyLevel,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: name,
      page: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300.0,
                child: Hero(
                  tag: id,
                  child: Image.network(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Temperament:',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    temperament,
                    style: TextStyle(fontSize: 20.0),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    'Description:',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    description,
                    style: TextStyle(fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
