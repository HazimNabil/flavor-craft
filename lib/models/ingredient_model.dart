class Ingredient {
  final String name;
  final double amount;
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
