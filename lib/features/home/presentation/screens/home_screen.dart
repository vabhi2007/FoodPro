import 'package:flutter/material.dart';
import 'package:foodpro/app.dart';
import 'package:foodpro/features/home/presentation/widgets/recipe_list.dart';
import 'package:foodpro/features/recipes/presentation/screens/recipes_screen.dart';

import '../widgets/search_bar.dart';
import '../widgets/search_bar_title.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align children to start
          children: [
            SearchBarTitle(title: 'Your Recipes', targetPage: App()),
            HomeSearchBar(
              prompt: "Search your Recipes",
            ),
            const SizedBox(
                height: 16.0), // Add space between HomeSearchBar and RecipeList
            RecipeList(),
          ],
        ),
      ),
    );
  }
}
