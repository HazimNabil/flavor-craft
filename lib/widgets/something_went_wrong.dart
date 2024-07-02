import 'package:flutter/material.dart';

class SomethingWentWrong extends StatelessWidget {
  final String msg;
  const SomethingWentWrong({super.key, required this.msg});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Center(
        child: Text(
          msg,
          style: const TextStyle(color: Colors.red, fontSize: 18),
        ),
      ),
    );
  }
}
