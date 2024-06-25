import 'package:flutter/material.dart';

import '../helper/create_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar("Let's Cooking"),
    );
  }
}
