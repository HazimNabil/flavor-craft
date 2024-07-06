import 'package:hive/hive.dart';
import 'ingredient_model.dart';

part 'recipe_model.g.dart';

@HiveType(typeId: 1)
class Recipe extends HiveObject {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String source;
  @HiveField(3)
  final String image;
  @HiveField(4)
  final List<Ingredient> ingredients;

  Recipe({
    required this.id,
    required this.title,
    required this.source,
    required this.image,
    required this.ingredients,
  });

  factory Recipe.fromJson(jsonData) {
    var ingredients = (jsonData['extendedIngredients'] as List);
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
