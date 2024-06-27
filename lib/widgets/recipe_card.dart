import 'package:flavor_craft/constans.dart';
import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          child: Image.network(
            'https://img.spoonacular.com/recipes/716429-312x231.jpg',
            fit: BoxFit.fill,
            width: double.infinity,
          ),
        ),
        Card(
          margin: const EdgeInsets.all(0),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ), // Makes the border sharp
          ),
          color: Colors.white,
          elevation: 10,
          child: ListTile(
            title: const Text('Pasta'),
            subtitle: const Text('Chef'),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_border,
                color: kMainColor,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20)
      ],
    );
  }
}
