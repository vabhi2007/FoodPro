// lib\features\home\presentation\screens\home_screen.dart

import 'package:flutter/material.dart';
import '../../../home/presentation/widgets/macro_tracker.dart';
import '../widgets/macro_chart.dart';

class NutritionScreen extends StatelessWidget {
  const NutritionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double macroSize = 177;
    const double innerpadding = 12.0;
    return Scaffold(
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    right: innerpadding, bottom: innerpadding * 2),
                child: MacroTracker(
                  macroTitle: 'Calories',
                  macroCount: 2350,
                  macroGoal: 2800,
                  imagePath: 'lib/assets/images/all_foods.png',
                  size: macroSize,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: innerpadding, bottom: innerpadding * 2),
                child: MacroTracker(
                  macroTitle: 'Protein',
                  macroCount: 2350,
                  macroGoal: 2800,
                  imagePath: 'lib/assets/images/protein.png',
                  size: macroSize,
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    right: innerpadding, bottom: innerpadding * 2),
                child: MacroTracker(
                  macroTitle: 'Carbs',
                  macroCount: 2350,
                  macroGoal: 2800,
                  imagePath: 'lib/assets/images/carbs.png',
                  size: macroSize,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: innerpadding, bottom: innerpadding * 2),
                child: MacroTracker(
                  macroTitle: 'Fats',
                  macroCount: 2350,
                  macroGoal: 2800,
                  imagePath: 'lib/assets/images/fats.png',
                  size: macroSize,
                ),
              ),
            ],
          ),
          const Text("Week's Nutrition"),
          MacroChart(),
          const Text("Chart End")
        ],
      )),
    );
  }
}
