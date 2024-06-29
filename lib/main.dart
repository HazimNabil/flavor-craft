import 'package:flutter/material.dart';

import 'views/recipes_view.dart';

void main() {
  runApp(const FlavorCraft());
}

class FlavorCraft extends StatelessWidget {
  const FlavorCraft({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const RecipesView(),
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: 'Poppins',
      ),
    );
  }
}
