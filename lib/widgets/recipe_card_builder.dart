import 'package:flavor_craft/cubits/random_recipe_cubit/random_recipe_cubit.dart';
import 'package:flavor_craft/widgets/loading_indicator.dart';
import 'package:flavor_craft/widgets/recipe_card.dart';
import 'package:flavor_craft/widgets/something_went_wrong.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/random_recipe_cubit/random_recipe_states.dart';

class RecipeCardBuilder extends StatelessWidget {
  const RecipeCardBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RandomRecipeCubit, RandomRecipeState>(
      builder: (context, state) {
        if (state is RandomRecipeLoading) {
          return const LoadingIndicator();
        } else if (state is RandomRecipeLoaded) {
          return RecipeCard(recipe: state.randomRecipe);
        } else if (state is RandomRecipeError) {
          return SomethingWentWrong(msg: state.message);
        } else {
          return const Placeholder();
        }
      },
    );
  }
}
