import 'package:flutter/material.dart';
import 'package:superhero_app/hero_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SuperHero',
      home: HeroList(),
    );
  }
}
