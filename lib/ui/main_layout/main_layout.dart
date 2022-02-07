import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final Widget page;

  MainLayout({
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cats App'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: page,
      ),
    );
  }
}
