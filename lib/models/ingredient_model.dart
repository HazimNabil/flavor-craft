import 'package:hive/hive.dart';

part 'ingredient_model.g.dart';

@HiveType(typeId: 0)
class Ingredient extends HiveObject {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final double amount;
  @HiveField(2)
  final String unit;

  Ingredient({
    required this.name,
    required this.amount,
    required this.unit,
  });

  factory Ingredient.fromJson(jsonData) {
    return Ingredient(
      name: jsonData['name'],
      amount: jsonData['amount'],
      unit: jsonData['unit'],
    );
  }
}
