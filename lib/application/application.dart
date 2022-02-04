import 'package:catsapp/cats/cats_view.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CatsPage(),
      ),
    );
  }
}
