import 'package:flutter/material.dart';

void main() {
  runApp(const FlavorCraft());
}

class FlavorCraft extends StatelessWidget {
  const FlavorCraft({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: 'Poppins',
      ),
    );
  }
}
