import 'package:flavor_craft/models/ingredient_model.dart';
import 'package:flutter/material.dart';

import '../constans.dart';

class IngredientCard extends StatelessWidget {
  final Ingredient ingredient;

  const IngredientCard({super.key, required this.ingredient});

  num cleanAmount(double amount) {
    return amount % 1 == 0 ? amount.truncate() : amount;
  }

  @override
  Widget build(BuildContext context) {
    var amount = cleanAmount(ingredient.amount);
    return Container(
      height: 55,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kMainColor,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          '$amount ${ingredient.unit} ${ingredient.name}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
