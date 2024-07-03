import 'package:flutter/material.dart';

import 'recipe_field.dart';
import 'recipe_title.dart';
// import 'recipes_list.dart';

class SavedRecipesPage extends StatelessWidget {
  const SavedRecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(height: 55),
          ),
          const SliverToBoxAdapter(
            child: RecipeTitle(title: 'Saved Recipe'),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 15),
          ),
          RecipeField(
            hint: 'Search saved recipe',
            onSubmitted: (query) {},
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 15),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 15),
          ),
          // RecipesList()
        ],
      ),
    );
  }
}
