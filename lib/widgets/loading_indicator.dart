import 'package:flutter/material.dart';

import '../constans.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      child: Center(
        child: CircularProgressIndicator(
          color: kMainColor,
        ),
      ),
    );
  }
}
