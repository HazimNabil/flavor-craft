import 'package:flavor_craft/cubits/random_recipe_cubit/random_recipe_cubit.dart';
import 'package:flavor_craft/widgets/recipe_card_builder.dart';
import 'package:flavor_craft/widgets/recipe_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'randomize_button.dart';

class RandomRecipePage extends StatelessWidget {
  const RandomRecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RandomRecipeCubit(),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: RecipeTitle(title: 'Random Recipe'),
            ),
            RecipeCardBuilder(),
            RandomizeButton(),
          ],
        ),
      ),
    );
  }
}
