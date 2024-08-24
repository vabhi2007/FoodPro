// lib\features\home\presentation\screens\home_screen.dart

import 'package:flutter/material.dart';
import 'package:foodpro/app.dart';
import 'package:foodpro/features/recipes/presentation/screens/recipes_screen.dart';

import '../widgets/search_bar.dart';
import '../widgets/search_bar_title.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          SearchBarTitle(title: 'Your Recipes', targetPage: App()),
          HomeSearchBar(
            prompt: "Search your Recipes",
          ),
        ],
      )),
    );
  }
}
