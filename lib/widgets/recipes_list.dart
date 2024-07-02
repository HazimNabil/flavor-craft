import 'package:flavor_craft/models/recipe_model.dart';
import 'package:flutter/material.dart';

import 'recipe_card.dart';

class RecipesList extends StatelessWidget {
  final List<Recipe> recipes;
  const RecipesList({super.key, required this.recipes});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: recipes.length,
        (context, index) => RecipeCard(recipe: recipes[index]),
      ),
    );
  }
}
