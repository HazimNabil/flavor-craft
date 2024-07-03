import 'package:flavor_craft/cubits/search_recipe_cubit/search_recipe_cubit.dart';
import 'package:flavor_craft/widgets/recipes_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/search_recipe_cubit/search_recipe_states.dart';
import 'loading_indicator.dart';
import 'something_went_wrong.dart';

class RecipesListBuilder extends StatelessWidget {
  const RecipesListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchRecipeCubit, SearchRecipeState>(
      builder: (context, state) {
        if (state is SearchRecipeLoading) {
          return const SliverFillRemaining(
            child: Center(child: LoadingIndicator()),
          );
        } else if (state is SearchRecipeLoaded) {
          return RecipesList(recipes: state.recipes);
        } else if (state is SearchRecipeError) {
          return SliverFillRemaining(
            child: Center(
              child: SomethingWentWrong(msg: state.message),
            ),
          );
        } else {
          return const Placeholder();
        }
      },
    );
  }
}
