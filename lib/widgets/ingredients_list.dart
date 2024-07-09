import 'package:flavor_craft/widgets/ingredient_card.dart';
import 'package:flutter/material.dart';

import '../models/ingredient_model.dart';

class IngredientsList extends StatelessWidget {
  final List<Ingredient> ingredients;

  const IngredientsList({super.key, required this.ingredients});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: ingredients.length,
        itemBuilder: (context, index) {
          return IngredientCard(
            ingredient: ingredients[index],
          );
        },
      ),
    );
  }
}
