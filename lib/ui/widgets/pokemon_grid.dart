import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_starter/ui/widgets/pokemon_card.dart';

class PokemonGrid extends StatelessWidget {
  const PokemonGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> cards = ['Card1', 'Card2', 'Card3'];

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1.4),
      itemCount: cards.length,
      itemBuilder: (context, index) {
        final text = cards[index];
        return PokemonCard(text: text);
      },
    );
  }
}
