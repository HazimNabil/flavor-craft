import 'package:flutter/material.dart';

import 'recipe_field.dart';
import 'recipes_list.dart';

class SavedRecipesPage extends StatelessWidget {
  const SavedRecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
          RecipeField(
            hint: 'Search saved recipe',
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 15),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 15),
          ),
          RecipesList()
        ],
      ),
    );
  }
}
