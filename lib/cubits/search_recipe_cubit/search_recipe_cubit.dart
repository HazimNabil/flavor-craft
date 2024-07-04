import 'package:dio/dio.dart';
import 'package:flavor_craft/cubits/search_recipe_cubit/search_recipe_states.dart';
import 'package:flavor_craft/services/recipe_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchRecipeCubit extends Cubit<SearchRecipeState> {
  SearchRecipeCubit() : super(SearchRecipeInitial()) {
    searchRecipe();
  }

  Future<void> searchRecipe({String query = '', String category = ''}) async {
    emit(SearchRecipeLoading());
    try {
      var recipes = await RecipeService(Dio()).fetchRecipes(
        query: query,
        category: category, 
      );
      emit(SearchRecipeLoaded(recipes));
    } catch (e) {
      emit(SearchRecipeError(e.toString()));
    }
  }
}
