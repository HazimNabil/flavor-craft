import 'package:flutter/material.dart';

import '../constans.dart';
import '../models/ingredient_model.dart';

class IngredientsList extends StatelessWidget {
  final List<Ingredient> ingredients;

  const IngredientsList({super.key, required this.ingredients});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            height: 60,
            color: kMainColor,
            child: const Text('ingredient'),
          );
        },
      ),
    );
  }
}
