import 'package:flutter/material.dart';

import '../helper/create_app_bar.dart';
import '../widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar("Let's Cooking"),
      body: const HomeViewBody(),
    );
  }
}
