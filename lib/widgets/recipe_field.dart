import 'package:flavor_craft/constans.dart';
import 'package:flutter/material.dart';

class RecipeField extends StatelessWidget {
  final String hint;
  final void Function(String) onSubmitted;

  const RecipeField({super.key, required this.hint, required this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: TextField(
        cursorColor: kMainColor,
        onSubmitted: onSubmitted,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 16),
          prefixIcon: const Icon(
            Icons.search,
            color: Color(0xFF8B8B8B),
          ),
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: const BorderSide(color: kMainColor),
          ),
        ),
      ),
    );
  }
}
