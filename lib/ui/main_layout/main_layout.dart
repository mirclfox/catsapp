import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final Widget page;

  MainLayout({
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.7),
      appBar: AppBar(
        title: Text('Cats App'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent.withOpacity(0.7),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: page,
      ),
    );
  }
}
