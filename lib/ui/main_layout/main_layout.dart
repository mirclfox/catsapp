import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final Widget page;

  MainLayout({
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54.withOpacity(.5),
      appBar: AppBar(
        title: Text('Cats App'),
        centerTitle: true,
        backgroundColor: Colors.white60,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: page,
      ),
    );
  }
}
