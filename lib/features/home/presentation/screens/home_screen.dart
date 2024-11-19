import 'package:flutter/material.dart';
import 'package:foodpro/features/home/presentation/widgets/macro_tracker.dart';
import 'package:foodpro/features/home/presentation/widgets/mini_macro_tracker.dart';
import 'package:foodpro/features/home/presentation/widgets/pantry_view_card.dart';
import 'package:foodpro/features/home/presentation/widgets/recipe_list.dart';
import '../widgets/search_bar.dart';
import '../widgets/search_bar_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align children to start
            children: [
              SearchBarTitle(title: 'Your Recipes', targetPage: 2),
              HomeSearchBar(
                prompt: "Search your Recipes",
              ),
              const SizedBox(
                  height:
                      16.0), // Add space between HomeSearchBar and RecipeList
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
                  MacroTracker(
                    macroTitle: 'Calories',
                    macroCount: 2350,
                    macroGoal: 2800,
                    imagePath: 'lib/assets/images/all_foods.png',
                    size: 180.0,
                  ),
                  // Column of MiniMacroTrackers
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          MiniMacroTracker(
                            macroTitle: 'Protein',
                            macroCount: 85,
                            macroGoal: 110,
                            imagePath: 'lib/assets/images/protein.png',
                          ),
                          // Space between mini trackers
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 6.5,
                                horizontal: 10.0), // Space around the divider
                            height: 1.0, // Thickness of the divider
                            width: double
                                .infinity, // Full width of the parent container
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(
                                  0, 125, 125, 125), // Color of the divider
                              borderRadius: BorderRadius.circular(
                                  12.0), // Rounded corners
                            ),
                          ),
                          MiniMacroTracker(
                            macroTitle: 'Carbs',
                            macroCount: 200,
                            macroGoal: 300,
                            imagePath: 'lib/assets/images/carbs.png',
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 6.5,
                                horizontal: 10.0), // Space around the divider
                            height: 1.0, // Thickness of the divider
                            width: double
                                .infinity, // Full width of the parent container
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(
                                  0, 125, 125, 125), // Color of the divider
                              borderRadius: BorderRadius.circular(
                                  12.0), // Rounded corners
                            ),
                          ),
                          MiniMacroTracker(
                            macroTitle: 'Fats',
                            macroCount: 70,
                            macroGoal: 90,
                            imagePath: 'lib/assets/images/fats.png',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
