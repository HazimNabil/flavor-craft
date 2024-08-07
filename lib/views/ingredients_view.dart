import 'package:flavor_craft/models/recipe_model.dart';
import 'package:flutter/material.dart';

import '../widgets/ingredients_view_body.dart';

class IngredientsView extends StatelessWidget {
  final Recipe recipe;

  const IngredientsView({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IngredientsViewBody(recipe: recipe),
    );
  }
}
