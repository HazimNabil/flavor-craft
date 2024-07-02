import 'package:flavor_craft/constans.dart';
import 'package:flavor_craft/models/recipe_model.dart';
import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;
  const RecipeCard({super.key, required this.recipe});

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
            recipe.image,
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
            title: Text(recipe.title),
            titleTextStyle: const TextStyle(
              overflow: TextOverflow.ellipsis,
              color: Colors.black,
              fontFamily: 'Poppins',
            ),
            subtitle: Text(recipe.source),
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
