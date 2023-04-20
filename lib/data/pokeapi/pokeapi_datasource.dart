import 'dart:convert';

import 'package:flutter_starter/data/pokeapi/models/pokemon.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

var logger = Logger();

Future<FetchPokemonResultModel> fetchPokemon() async {
  final response =
      await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/'));
  if (response.statusCode == 200) {
    return FetchPokemonResultModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load');
  }
}
