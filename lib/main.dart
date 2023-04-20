import 'package:flutter/material.dart';
import 'package:flutter_starter/ui/widgets/pokemon_grid.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Starter', theme: ThemeData.dark(), home: const Page());
  }
}

class Page extends StatelessWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pokedex')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: PokemonGrid(),
      ),
    );
  }
}
