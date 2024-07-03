import 'package:flavor_craft/cubits/random_recipe_cubit/random_recipe_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constans.dart';

class RandomizeButton extends StatelessWidget {
  const RandomizeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(kMainColor),
        iconColor: MaterialStatePropertyAll(Colors.white),
        fixedSize: MaterialStatePropertyAll(Size(180, 60)),
        iconSize: MaterialStatePropertyAll(30),
      ),
      onPressed: () {
        var cubit = BlocProvider.of<RandomRecipeCubit>(context);
        cubit.fetchRandomRecipe();
      },
      icon: const Icon(Icons.restart_alt),
      label: const Text(
        'Regenerate',
        style: TextStyle(color: Colors.white, fontSize: 21),
      ),
    );
  }
}
