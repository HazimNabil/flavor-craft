import 'package:dio/dio.dart';
import 'package:flavor_craft/cubits/random_recipe_cubit/random_recipe_states.dart';
import 'package:flavor_craft/services/recipe_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RandomRecipeCubit extends Cubit<RandomRecipeState> {
  RandomRecipeCubit() : super(RandomRecipeInitial()) {
    fetchRandomRecipe();
  }

  Future<void> fetchRandomRecipe() async {
    try {
      emit(RandomRecipeLoading());
      var randomRecipe = await RecipeService(Dio()).fetchRandomRecipe();
      emit(RandomRecipeLoaded(randomRecipe));
    } catch (e) {
      emit(RandomRecipeError(e.toString()));
    }
  }
}
