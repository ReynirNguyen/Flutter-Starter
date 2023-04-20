import 'package:flutter/material.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.blueAccent[400],
      ),
      child: Center(child: Text(text)),
    );
  }
}
