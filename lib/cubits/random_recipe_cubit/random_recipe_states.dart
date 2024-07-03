import '../../models/recipe_model.dart';

abstract class RandomRecipeState {}

class RandomRecipeInitial extends RandomRecipeState {}

class RandomRecipeLoaded extends RandomRecipeState {
  final Recipe randomRecipe;

  RandomRecipeLoaded(this.randomRecipe);
}

class RandomRecipeLoading extends RandomRecipeState {}

class RandomRecipeError extends RandomRecipeState {
  final String message;

  RandomRecipeError(this.message);
}
