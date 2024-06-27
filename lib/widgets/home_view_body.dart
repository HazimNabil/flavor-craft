import 'package:flavor_craft/widgets/recipe_field.dart';
import 'package:flutter/material.dart';

import 'category_section.dart';
import 'recipes_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
          RecipeField(
            hint: 'Search recipe',
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 15),
          ),
          CategorySection(),
          SliverToBoxAdapter(
            child: SizedBox(height: 15),
          ),
          RecipesList()
        ],
      ),
    );
  }
}
