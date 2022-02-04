import 'package:catsapp/application/application.dart';
import 'package:catsapp/services/breeds_api_provider.dart';
import 'package:flutter/material.dart';

void main() {
  BreedsApiProvider().fetchBreeds();
  runApp(Application());
}
