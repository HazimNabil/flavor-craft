import 'package:flutter/material.dart';

import 'category_widget.dart';

class CategoriesListView extends StatelessWidget {
  final categories = const [
    'general',
    'main course',
    'side dish',
    'dessert',
    'appetizer',
    'salad',
  ];
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryWidget(category: categories[index]);
        },
      ),
    );
  }
}
