import 'package:flutter/material.dart';

import '../constans.dart';
import '../helper/create_app_bar.dart';
import '../widgets/home_page.dart';

class RecipesView extends StatelessWidget {
  const RecipesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar("Let's Cooking"),
      body: const HomePage(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kMainColor,
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
    );
  }
}
