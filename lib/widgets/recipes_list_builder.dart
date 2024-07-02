import 'package:dio/dio.dart';
import 'package:flavor_craft/models/recipe_model.dart';
import 'package:flavor_craft/widgets/recipes_list.dart';
import 'package:flutter/material.dart';

import '../services/recipe_service.dart';
import 'loading_indicator.dart';
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
    future = RecipeService(Dio()).fetchRecipes();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Recipe>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return RecipesList(recipes: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverFillRemaining(
            child: Center(
              child: SomethingWentWrong(msg: snapshot.error.toString()),
            ),
          );
        } else {
          return const LoadingIndicator();
        }
      },
    );
  }
}
