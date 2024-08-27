import 'package:flutter/material.dart';
import 'package:foodpro/features/home/presentation/widgets/macro_tracker.dart';
import 'package:foodpro/features/home/presentation/widgets/mini_macro_tracker.dart';

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
            SearchBarTitle(title: 'Your Nutrition', targetPage: 1),

            // Row with the Big MacroTracker and a Column of MiniMacroTrackers
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly, // Align items evenly
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Big MacroTracker
                MacroTracker(
                  macroTitle: 'Calories',
                  macroCount: 2350,
                  macroGoal: 2800,
                  imagePath: 'lib/assets/images/all_foods.png',
                ),
                // Column of MiniMacroTrackers
                Column(
                  children: [
                    MiniMacroTracker(
                      macroTitle: 'Protein',
                      macroCount: 85,
                      macroGoal: 110,
                      imagePath: 'lib/assets/images/protein.png',
                    ),
                    const SizedBox(height: 8.0), // Space between mini trackers
                    MiniMacroTracker(
                      macroTitle: 'Carbs',
                      macroCount: 200,
                      macroGoal: 300,
                      imagePath: 'lib/assets/images/protein.png',
                    ),
                    const SizedBox(height: 8.0), // Space between mini trackers
                    MiniMacroTracker(
                      macroTitle: 'Fats',
                      macroCount: 70,
                      macroGoal: 90,
                      imagePath: 'lib/assets/images/protein.png',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
