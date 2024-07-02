import 'package:flavor_craft/constans.dart';
// import 'package:flavor_craft/widgets/recipe_card.dart';
import 'package:flavor_craft/widgets/recipe_title.dart';
import 'package:flutter/material.dart';

class RandomRecipePage extends StatelessWidget {
  const RandomRecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: RecipeTitle(title: 'Random Recipe'),
          ),
          // const RecipeCard(),
          ElevatedButton.icon(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(kMainColor),
              iconColor: MaterialStatePropertyAll(Colors.white),
              fixedSize: MaterialStatePropertyAll(Size(180, 60)),
              iconSize: MaterialStatePropertyAll(30),
            ),
            onPressed: () {},
            icon: const Icon(Icons.restart_alt),
            label: const Text(
              'Regenerate',
              style: TextStyle(color: Colors.white, fontSize: 21),
            ),
          ),
        ],
      ),
    );
  }
}
