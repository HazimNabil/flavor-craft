import 'package:flavor_craft/widgets/recipe_field.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        RecipeField(
          hint: 'Search recipe',
        ),
      ],
    );
  }
}
