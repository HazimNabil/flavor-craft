import 'package:flutter/material.dart';

import '../constans.dart';
import '../helper/create_app_bar.dart';
import '../widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar("Let's Cooking"),
      body: const HomeViewBody(),
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
