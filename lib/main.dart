import 'package:flavor_craft/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FlavorCraft());
}

class FlavorCraft extends StatelessWidget {
  const FlavorCraft({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: 'Poppins',
      ),
    );
  }
}
