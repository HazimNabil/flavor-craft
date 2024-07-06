import 'package:flavor_craft/constans.dart';
import 'package:flavor_craft/models/ingredient_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'models/recipe_model.dart';
import 'views/recipes_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(IngredientAdapter());
  Hive.registerAdapter(RecipeAdapter());
  await Hive.openBox<Recipe>(kRecipesBox);
  runApp(const FlavorCraft());
}

class FlavorCraft extends StatelessWidget {
  const FlavorCraft({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const RecipesView(),
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: 'Poppins',
      ),
    );
  }
}
