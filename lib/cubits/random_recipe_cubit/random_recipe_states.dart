abstract class RandomRecipeState {}

class RandomRecipeInitial extends RandomRecipeState {}

class RandomRecipeLoaded extends RandomRecipeState {}

class RandomRecipeLoading extends RandomRecipeState {}

class RandomRecipeError extends RandomRecipeState {
  final String message;

  RandomRecipeError(this.message);
}
