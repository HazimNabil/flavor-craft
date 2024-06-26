import 'package:flutter/material.dart';

import 'categories_list_view.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Category',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 12),
          CategoriesListView(),
        ],
      ),
    );
  }
}
