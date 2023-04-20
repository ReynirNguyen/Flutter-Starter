class PokemonModel {
  final int id;
  final String name;

  PokemonModel({required this.id, required this.name});
}

class FetchPokemonResultModel {
  final List<PokemonModel> pokemons;
  FetchPokemonResultModel({required this.pokemons});

  factory FetchPokemonResultModel.fromJson(Map<String, dynamic> json) {
    final List<PokemonModel> results = json['results'] as List<PokemonModel>;
    return FetchPokemonResultModel(pokemons: results);
  }
}
