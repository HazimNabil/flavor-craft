import 'package:flavor_craft/constans.dart';
import 'package:flavor_craft/cubits/search_recipe_cubit/search_recipe_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryWidget extends StatelessWidget {
  final String category;
  const CategoryWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        var cubit = BlocProvider.of<SearchRecipeCubit>(context);
        cubit.searchRecipe(category: category);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        width: 105,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: kMainColor,
        ),
        child: Center(
          child: Text(
            category,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
