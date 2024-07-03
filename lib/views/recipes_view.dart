import 'package:flavor_craft/cubits/search_recipe_cubit/search_recipe_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constans.dart';
import '../widgets/home_page.dart';
import '../widgets/random_recipe_page.dart';
import '../widgets/saved_recipes_page.dart';

class RecipesView extends StatefulWidget {
  const RecipesView({super.key});

  @override
  State<RecipesView> createState() => _RecipesViewState();
}

class _RecipesViewState extends State<RecipesView> {
  int _currentIndex = 0;
  final _pages = const [
    HomePage(),
    SavedRecipesPage(),
    RandomRecipePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchRecipeCubit(),
      child: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          selectedItemColor: kMainColor,
          onTap: (newIndex) {
            setState(() => _currentIndex = newIndex);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border),
              label: 'Saved',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shuffle),
              label: 'Random',
            ),
          ],
        ),
      ),
    );
  }
}
