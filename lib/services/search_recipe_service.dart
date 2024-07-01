import 'package:dio/dio.dart';
import 'package:flavor_craft/models/recipe_model.dart';

import '../constans.dart';

class SearchRecipeService {
  var apiKey = '1e3fa2dd0e654c96a374fe631d0aa652';
  var baseUrl = 'https://api.spoonacular.com/recipes';
  Dio dio;

  SearchRecipeService(this.dio);

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
      var errorMessage = e.message ?? defaultErrorMessage;
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception(defaultErrorMessage);
    }
  }
}
