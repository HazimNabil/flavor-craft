import 'package:flavor_craft/cubits/search_recipe_cubit/search_recipe_cubit.dart';
import 'package:flavor_craft/widgets/recipe_field.dart';
import 'package:flavor_craft/widgets/recipe_title.dart';
import 'package:flavor_craft/widgets/recipes_list_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'category_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            child: RecipeTitle(title: "Let's Cooking"),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 15),
          ),
          RecipeField(
            hint: 'Search recipe',
            onSubmitted: (query) {
              var cubit = BlocProvider.of<SearchRecipeCubit>(context);
              cubit.searchRecipe(query: query);
            },
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 15),
          ),
          const CategorySection(),
          const SliverToBoxAdapter(
            child: SizedBox(height: 15),
          ),
          const RecipesListBuilder()
        ],
      ),
    );
  }
}
