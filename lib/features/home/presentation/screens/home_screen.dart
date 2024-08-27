import 'package:flutter/material.dart';
import 'package:foodpro/features/home/presentation/widgets/macro_tracker.dart';

import 'package:foodpro/features/home/presentation/widgets/pantry_view_card.dart';
import 'package:foodpro/features/home/presentation/widgets/recipe_list.dart';

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
            SearchBarTitle(title: 'Your Recipes', targetPage: 2),
            HomeSearchBar(
              prompt: "Search your Recipes",
            ),
            const SizedBox(
                height: 16.0), // Add space between HomeSearchBar and RecipeList
            RecipeList(),
            const SizedBox(height: 32.0),
            HomeSearchBar(
              prompt: "Search your Pantry",
            ),
            PantryViewCard(),
            //const SizedBox(height: 8.0),
            SearchBarTitle(title: 'Your Nutrition', targetPage: 1),
            MacroTracker(
                macroTitle: 'Calories',
                macroCount: 2350,
                macroGoal: 2800,
                imagePath: 'lib/assets/images/all_foods.png')
          ],
        ),
      ),
    );
  }
}
