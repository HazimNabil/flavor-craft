import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constans.dart';
import '../cubits/read_recipes_cubit/read_recipes_cubit.dart';
import '../cubits/read_recipes_cubit/read_recipes_states.dart';
import 'recipes_list.dart';

class SavedRecipesListBuilder extends StatefulWidget {
  const SavedRecipesListBuilder({super.key});

  @override
  State<SavedRecipesListBuilder> createState() {
    return _SavedRecipesListBuilderState();
  }
}

class _SavedRecipesListBuilderState extends State<SavedRecipesListBuilder> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ReadRecipesCubit>(context).readRecipes();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadRecipesCubit, ReadRecipeState>(
      builder: (context, state) {
        if (state is ReadRecipeSuccess) {
          if (state.recipes.isEmpty) {
            return const SliverFillRemaining(
              child: Center(
                child: Text(
                  'No saved recipes to display',
                  style: TextStyle(fontSize: 24, color: kMainColor),
                ),
              ),
            );
          }
          return RecipesList(recipes: state.recipes);
        } else {
          return const Placeholder();
        }
      },
    );
  }
}
