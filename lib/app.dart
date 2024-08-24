// lib/app.dart

import 'package:flutter/material.dart';

//page screens
import 'features/home/presentation/screens/home_screen.dart';
import 'features/recipes/presentation/screens/recipes_screen.dart';
import 'features/pantry/presentation/screens/pantry_screen.dart';
import 'features/nutrition/presentation/screens/nutrition_screen.dart';
import 'features/barcode_scanner/presentation/screens/barcode_scanner_screen.dart';

//page utils
import 'core/utils/app_theme.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;

  // List of widgets to display in the body based on the selected index
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    NutritionScreen(),
    RecipesScreen(),
    PantryScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FoodPro',
      theme: AppTheme.lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FoodPro'),
          backgroundColor:
              Colors.transparent, // Makes the AppBar background transparent
          centerTitle: true, // Centers the title if needed
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? Image.asset('lib/assets/icons/home_filled.png',
                      width: 24, height: 24)
                  : Image.asset('lib/assets/icons/home_outline.png',
                      width: 24, height: 24),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? Image.asset('lib/assets/icons/nutrition_filled.png',
                      width: 24, height: 24)
                  : Image.asset('lib/assets/icons/nutrition_outline.png',
                      width: 24, height: 24),
              label: 'Nutrition',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? Image.asset('lib/assets/icons/recipe_filled.png',
                      width: 24, height: 24)
                  : Image.asset('lib/assets/icons/recipe_outline.png',
                      width: 24, height: 24),
              label: 'Recipe',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 3
                  ? Image.asset('lib/assets/icons/pantry_filled.png',
                      width: 24, height: 24)
                  : Image.asset('lib/assets/icons/pantry_outline.png',
                      width: 24, height: 24),
              label: 'Pantry',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      ),
    );
  }
}
