import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final Widget page;
  final EdgeInsets padding;
  final String title;

  MainLayout({
    required this.title,
    required this.page,
    this.padding = const EdgeInsets.symmetric(horizontal: 0.0),
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(fontSize: 25.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent.withOpacity(0.7),
      ),
      body: Padding(
        padding: padding,
        child: page,
      ),
    );
  }
}
