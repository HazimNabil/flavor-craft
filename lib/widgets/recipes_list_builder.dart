import 'package:dio/dio.dart';
import 'package:flavor_craft/models/recipe_model.dart';
import 'package:flavor_craft/services/search_recipe_service.dart';
import 'package:flavor_craft/widgets/recipes_list.dart';
import 'package:flutter/material.dart';

import 'something_went_wrong.dart';

class RecipesListBuilder extends StatefulWidget {
  const RecipesListBuilder({super.key});

  @override
  State<RecipesListBuilder> createState() => _RecipesListBuilderState();
}

class _RecipesListBuilderState extends State<RecipesListBuilder> {
  dynamic future;

  @override
  void initState() {
    super.initState();
    future = SearchRecipeService(Dio()).fetchRecipes();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Recipe>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return RecipesList(recipes: snapshot.data!);
        } else if (snapshot.hasError) {
          return SomethingWentWrong(msg: snapshot.error.toString());
        }
        return const SliverToBoxAdapter(
          child: Placeholder(),
        );
      },
    );
  }
}
