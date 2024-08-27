import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'dart:ui'; // Required for the blur effect

class MacroTracker extends StatelessWidget {
  final String macroTitle;
  final int macroCount;
  final int macroGoal;
  final String imagePath;

  MacroTracker({
    required this.macroTitle,
    required this.macroCount,
    required this.macroGoal,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    const double scale = 0.8;
    return LayoutBuilder(
      builder: (context, constraints) {
        double size = constraints.maxWidth *
            0.47; // Set the size to be half of the parent's width

        return Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              // The image background
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  imagePath,
                  width: size,
                  height: size,
                  fit: BoxFit.cover,
                ),
              ),
              // Apply the blur effect only to the image
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 0.9, sigmaY: 0.9),
                  child: Container(
                    width: size,
                    height: size,
                    color:
                        Colors.black.withOpacity(0.2), // Optional dark overlay
                  ),
                ),
              ),
              // Background circle
              Container(
                width: size * scale,
                height: size * scale,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white
                      .withOpacity(0.7), // Background color and opacity
                ),
              ),
              // Circular progress indicator
              CircularPercentIndicator(
                radius: (size * scale) / 2,
                lineWidth: 6.0,
                percent: macroCount / macroGoal, // Dynamic value

                backgroundColor: Colors.transparent, // Transparent background
                progressColor: Colors.orange[400],
                center: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$macroCount/$macroGoal',
                      style: const TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      macroTitle,
                      style: const TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
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
