import 'package:flutter/material.dart';
import 'package:flutter_starter/data/pokeapi/models/pokemon.dart';
import 'package:flutter_starter/data/pokeapi/pokeapi_datasource.dart';
import 'package:logger/logger.dart';

var logger = Logger();

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

class Page extends StatefulWidget {
  const Page({super.key});

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  late Future<FetchPokemonResultModel> futurePokemons;

  @override
  void initState() {
    super.initState();
    futurePokemons = fetchPokemon();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pokedex')),
      body: FutureBuilder(
        future: futurePokemons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data?.pokemons[0].name ?? '');
          }
          if (snapshot.hasError) {
            logger.d(snapshot.error);
          }

          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
