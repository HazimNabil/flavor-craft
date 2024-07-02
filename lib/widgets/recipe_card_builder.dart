import 'package:dio/dio.dart';
import 'package:flavor_craft/models/recipe_model.dart';
import 'package:flavor_craft/services/recipe_service.dart';
import 'package:flavor_craft/widgets/recipe_card.dart';
import 'package:flavor_craft/widgets/something_went_wrong.dart';
import 'package:flutter/material.dart';

class RecipeCardBuilder extends StatefulWidget {
  const RecipeCardBuilder({super.key});

  @override
  State<RecipeCardBuilder> createState() => _RecipeCardBuilderState();
}

class _RecipeCardBuilderState extends State<RecipeCardBuilder> {
  dynamic future;

  @override
  void initState() {
    super.initState();
    future = RecipeService(Dio()).fetchRandomRecipe();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Recipe>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return RecipeCard(recipe: snapshot.data!);
        } else if (snapshot.hasError) {
          return SomethingWentWrong(msg: snapshot.error.toString());
        }
        return const Placeholder();
      },
    );
  }
}
