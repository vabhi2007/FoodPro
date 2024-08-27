import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'dart:ui'; // Required for the blur effect

class MiniMacroTracker extends StatelessWidget {
  final String macroTitle;
  final int macroCount;
  final int macroGoal;
  final String imagePath;

  MiniMacroTracker({
    required this.macroTitle,
    required this.macroCount,
    required this.macroGoal,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxWidth = constraints.maxWidth * 0.9;

        return Container(
          width: maxWidth, // Use the full width of the parent container
          height: 40, // Fixed height
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              // Background blur
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                  child: Container(
                    width: maxWidth, // Match the full width of the parent
                    height: 60.0, // Match the fixed height
                    color:
                        Colors.black.withOpacity(0.4), // Optional dark overlay
                  ),
                ),
              ),
              // Content inside the MiniMacroTracker
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      macroTitle,
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      '$macroCount/$macroGoal grams',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
