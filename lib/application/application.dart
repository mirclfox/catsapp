import 'package:catsapp/ui/cats/cats_view.dart';
import 'package:catsapp/ui/main_layout/main_layout.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainLayout(
        title: 'Cats App',
        page: CatsPage(),
      ),
    );
  }
}
