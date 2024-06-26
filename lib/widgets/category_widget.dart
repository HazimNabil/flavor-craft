import 'package:flavor_craft/constans.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String category;
  const CategoryWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: kMainColor,
      ),
      child: Center(
        child: Text(
          category,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
