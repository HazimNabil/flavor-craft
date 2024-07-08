import 'package:flavor_craft/constans.dart';
import 'package:flavor_craft/cubits/read_recipes_cubit/read_recipes_cubit.dart';
import 'package:flavor_craft/models/recipe_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import '../views/ingredients_view.dart';

class RecipeCard extends StatefulWidget {
  final Recipe recipe;

  const RecipeCard({super.key, required this.recipe});

  @override
  State<RecipeCard> createState() => _RecipeCardState();
}

class _RecipeCardState extends State<RecipeCard> {
  Box recipesBox = Hive.box<Recipe>(kRecipesBox);
  late bool isSaved;

  void toggleSaveRecipe() {
    if (isSaved) {
      recipesBox.delete(widget.recipe.id);
    } else {
      recipesBox.put(widget.recipe.id, widget.recipe);
    }
    isSaved = !isSaved;
    setState(() {});
    BlocProvider.of<ReadRecipesCubit>(context).readRecipes();
  }

  @override
  Widget build(BuildContext context) {
    isSaved = recipesBox.containsKey(widget.recipe.id);
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => IngredientsView(recipe: widget.recipe),
          ),
        );
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: Image.network(
              widget.recipe.image,
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
              ),
            ),
            color: Colors.white,
            elevation: 10,
            child: ListTile(
              title: Text(widget.recipe.title),
              titleTextStyle: const TextStyle(
                overflow: TextOverflow.ellipsis,
                color: Colors.black,
                fontFamily: 'Poppins',
              ),
              subtitle: Text(widget.recipe.source),
              trailing: IconButton(
                icon: Icon(
                  isSaved ? Icons.bookmark : Icons.bookmark_border,
                  color: kMainColor,
                ),
                onPressed: toggleSaveRecipe,
              ),
            ),
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }
}
