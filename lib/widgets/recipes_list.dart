import 'package:flutter/material.dart';

import 'recipe_card.dart';

class RecipesList extends StatelessWidget {
  const RecipesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 7,
        (context, index) => const RecipeCard(),
      ),
    );
  }
}
