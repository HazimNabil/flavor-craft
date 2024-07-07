import '../../models/recipe_model.dart';

abstract class ReadRecipeState {}

class ReadRecipeInitial extends ReadRecipeState {}

class ReadRecipeSuccess extends ReadRecipeState {
  final List<Recipe> recipes;

  ReadRecipeSuccess(this.recipes);
}
