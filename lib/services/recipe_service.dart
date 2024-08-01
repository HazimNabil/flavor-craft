import 'package:dio/dio.dart';
import 'package:flavor_craft/models/recipe_model.dart';

import 'api_config.dart';

class RecipeService {
  var baseUrl = 'https://api.spoonacular.com/recipes';
  final defaultErrorMessage = 'Oops there was an error, try later.';
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
      throw FormatException(errorMessage);
    } catch (e) {
      throw FormatException(defaultErrorMessage);
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
      throw FormatException(errorMessage);
    } catch (e) {
      throw FormatException(defaultErrorMessage);
    }
  }
}
