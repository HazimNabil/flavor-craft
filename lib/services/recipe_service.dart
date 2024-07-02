import 'package:dio/dio.dart';
import 'package:flavor_craft/models/recipe_model.dart';

import '../constans.dart';

class RecipeService {
  var apiKey = '1e3fa2dd0e654c96a374fe631d0aa652';
  var baseUrl = 'https://api.spoonacular.com/recipes';
  Dio dio;

  RecipeService(this.dio);

  Future<List<Recipe>> fetchRecipes({
    String query = '',
    String category = '',
  }) async {
    String url =
        '$baseUrl/complexSearch?apiKey=$apiKey&query=$query&addRecipeInformation=true&fillIngredients=true&type=$category';
    try {
      var response = await Dio().get(url);
      List<dynamic> jsonData = response.data['results'];
      var recipes = jsonData.map((recipe) => Recipe.fromJson(recipe)).toList();
      return recipes;
    } on DioException catch (e) {
      var errorMessage = e.response?.data['message'] ?? defaultErrorMessage;
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception(defaultErrorMessage);
    }
  }

  Future<Recipe> fetchRandomRecipe() async {
    String url = '$baseUrl/random?apiKey=$apiKey';
    try {
      var response = await Dio().get(url);
      dynamic jsonData = response.data['recipes'][0];
      var recipe = Recipe.fromJson(jsonData);
      return recipe;
    } on DioException catch (e) {
      var errorMessage = e.response?.data['message'] ?? defaultErrorMessage;
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception(defaultErrorMessage);
    }
  }
}
