import 'package:flavor_craft/constans.dart';
import 'package:flavor_craft/cubits/read_recipes_cubit/read_recipes_states.dart';
import 'package:flavor_craft/models/recipe_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

class ReadRecipesCubit extends Cubit<ReadRecipeState> {
  ReadRecipesCubit() : super(ReadRecipeInitial());

  void readRecipes() {
    var recipesBox = Hive.box<Recipe>(kRecipesBox);
    var recipes = recipesBox.values.toList();
    emit(ReadRecipeSuccess(recipes));
  }
}
