import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'dart:ui'; // Required for the blur effect

class MacroTracker extends StatelessWidget {
  final String macroTitle;
  final int macroCount;
  final int macroGoal;
  final String imagePath;
  final double size;

  const MacroTracker(
      {super.key,
      required this.macroTitle,
      required this.macroCount,
      required this.macroGoal,
      required this.imagePath,
      required this.size});

  @override
  Widget build(BuildContext context) {
    const double scale = 0.8;
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12.0),
            bottomLeft: Radius.circular(12.0),
            topRight: Radius.circular(12.0),
            bottomRight: Radius.circular(12.0)),
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
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12.0),
                bottomLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
                bottomRight: Radius.circular(12.0)),
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
              filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
              child: Container(
                width: size,
                height: size,
                color: Colors.black.withOpacity(0.3), // Optional dark overlay
              ),
            ),
          ),
          // Background circle
          Container(
            width: size * scale,
            height: size * scale,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:
                  Colors.white.withOpacity(0.8), // Background color and opacity
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
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(200, 0, 0, 0),
                  ),
                ),
                Text(
                  macroTitle,
                  style: const TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(200, 0, 0, 0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
