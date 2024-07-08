import 'package:flavor_craft/constans.dart';
import 'package:flavor_craft/cubits/read_recipes_cubit/read_recipes_states.dart';
import 'package:flavor_craft/models/recipe_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

class ReadRecipesCubit extends Cubit<ReadRecipeState> {
  ReadRecipesCubit() : super(ReadRecipeInitial());

  void readRecipes([String? query]) {
    var recipesBox = Hive.box<Recipe>(kRecipesBox);
    var data = recipesBox.values.toList();
    List<Recipe> recipes = data;
    if (query != null) {
      test(Recipe recipe) {
        var queryLower = query.toLowerCase();
        return recipe.title.toLowerCase().contains(queryLower);
      }

      recipes = data.where(test).toList();
    }
    emit(ReadRecipeSuccess(recipes));
  }
}
