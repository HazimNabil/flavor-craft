import 'ingredient_model.dart';

class Recipe {
  final int id;
  final String title;
  final String source;
  final String image;
  final List<Ingredient> ingredients;

  Recipe({
    required this.id,
    required this.title,
    required this.source,
    required this.image,
    required this.ingredients,
  });

  factory Recipe.fromJson(jsonData) {
    var ingredients = (jsonData['extendedIngredients'] as List<Ingredient>);
    toElement(ingredient) => Ingredient.fromJson(ingredient);
    return Recipe(
      id: jsonData['id'],
      title: jsonData['title'],
      source: jsonData['sourceName'],
      image: jsonData['image'],
      ingredients: ingredients.map(toElement).toList(),
    );
  }
}
