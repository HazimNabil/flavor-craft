import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constans.dart';
import '../cubits/read_recipes_cubit/read_recipes_cubit.dart';
import '../cubits/read_recipes_cubit/read_recipes_states.dart';
import 'recipes_list.dart';

class SavedRecipesListBuilder extends StatelessWidget {
  const SavedRecipesListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadRecipesCubit, ReadRecipeState>(
      builder: (context, state) {
        if (state is ReadRecipeSuccess) {
          return RecipesList(recipes: state.recipes);
        } else {
          return const SliverFillRemaining(
            child: Center(
              child: Text(
                'No saved recipes to display',
                style: TextStyle(
                  fontSize: 22,
                  color: kMainColor,
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
