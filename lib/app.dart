// lib/app.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_provider.dart';

//page screens
import 'features/home/presentation/screens/home_screen.dart';
import 'features/recipes/presentation/screens/recipes_screen.dart';
import 'features/pantry/presentation/screens/pantry_screen.dart';
import 'features/nutrition/presentation/screens/nutrition_screen.dart';
import 'features/barcode_scanner/presentation/screens/barcode_scanner_screen.dart';

//page utils
import 'core/utils/app_theme.dart';

class App extends ConsumerWidget {
  // Use ConsumerWidget to access providers
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex =
        ref.watch(selectedIndexProvider); // Watch the selectedIndexProvider

    // List of widgets to display in the body based on the selected index
    final List<Widget> widgetOptions = <Widget>[
      HomeScreen(),
      NutritionScreen(),
      RecipesScreen(),
      PantryScreen(),
    ];

    return MaterialApp(
      title: 'FoodPro',
      theme: AppTheme.lightTheme,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0), // Set the height of the AppBar
          child: AppBar(
            backgroundColor: Colors.transparent, // Transparent background
            elevation: 0, // Remove shadow/elevation
            centerTitle: true, // Center the title
            title: const Text(
              'FoodPro',
              style: TextStyle(color: Colors.black), // Customize the title text
            ),
            leading: IconButton(
              icon: const Icon(
                Icons.account_circle,
                color: Colors.black,
                size: 24.0,
              ), // User profile icon
              onPressed: () {
                // Handle profile icon tap
              },
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.add_circle_outline,
                  color: Colors.black,
                  size: 24.0,
                ), // Add button
                onPressed: () {
                  // Handle add button tap
                },
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: widgetOptions[selectedIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: selectedIndex == 0
                  ? Image.asset('lib/assets/icons/home_filled.png',
                      width: 24, height: 24)
                  : Image.asset('lib/assets/icons/home_outline.png',
                      width: 24, height: 24),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: selectedIndex == 1
                  ? Image.asset('lib/assets/icons/nutrition_filled.png',
                      width: 24, height: 24)
                  : Image.asset('lib/assets/icons/nutrition_outline.png',
                      width: 24, height: 24),
              label: 'Nutrition',
            ),
            BottomNavigationBarItem(
              icon: selectedIndex == 2
                  ? Image.asset('lib/assets/icons/recipe_filled.png',
                      width: 24, height: 24)
                  : Image.asset('lib/assets/icons/recipe_outline.png',
                      width: 24, height: 24),
              label: 'Recipe',
            ),
            BottomNavigationBarItem(
              icon: selectedIndex == 3
                  ? Image.asset('lib/assets/icons/pantry_filled.png',
                      width: 24, height: 24)
                  : Image.asset('lib/assets/icons/pantry_outline.png',
                      width: 24, height: 24),
              label: 'Pantry',
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          onTap: (index) {
            ref.read(selectedIndexProvider.notifier).state =
                index; // Update selectedIndex
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      ),
    );
  }
}
