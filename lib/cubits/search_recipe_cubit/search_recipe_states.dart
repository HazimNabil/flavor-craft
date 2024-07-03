import '../../models/recipe_model.dart';

abstract class SearchRecipeState {}

class SearchRecipeInitial extends SearchRecipeState {}

class SearchRecipeLoading extends SearchRecipeState {}

class SearchRecipeLoaded extends SearchRecipeState {
  final List<Recipe> recipes;

  SearchRecipeLoaded(this.recipes);
}

class SearchRecipeError extends SearchRecipeState {
  final String message;

  SearchRecipeError(this.message);
}
