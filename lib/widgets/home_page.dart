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
    return BlocProvider(
      create: (context) => SearchRecipeCubit(),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(height: 55),
            ),
            SliverToBoxAdapter(
              child: RecipeTitle(title: "Let's Cooking"),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 15),
            ),
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
            RecipesListBuilder()
          ],
        ),
      ),
    );
  }
}
