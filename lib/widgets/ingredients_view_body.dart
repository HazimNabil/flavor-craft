import 'package:flavor_craft/widgets/recipe_title.dart';
import 'package:flutter/material.dart';

import '../models/recipe_model.dart';
import 'ingredients_list.dart';

class IngredientsViewBody extends StatelessWidget {
  final Recipe recipe;

  const IngredientsViewBody({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 55),
          const RecipeTitle(title: 'Ingredients'),
          const SizedBox(height: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              recipe.image,
              fit: BoxFit.fill,
              width: double.infinity,
              errorBuilder: (context, error, stackTrace) {
                return Image.asset(
                  'assets/images/pexels-goumbik-616401.jpg',
                  fit: BoxFit.fill,
                  width: double.infinity,
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          IngredientsList(ingredients: recipe.ingredients),
        ],
      ),
    );
  }
}
