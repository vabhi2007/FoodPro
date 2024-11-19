import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'dart:ui'; // Required for the blur effect

class MiniMacroTracker extends StatelessWidget {
  final String macroTitle;
  final int macroCount;
  final int macroGoal;
  final String imagePath;

  const MiniMacroTracker({
    super.key,
    required this.macroTitle,
    required this.macroCount,
    required this.macroGoal,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxWidth = constraints.maxWidth;
        double maxHeight = constraints.maxHeight;

        return Container(
          width: maxWidth, // Use the full width of the parent container
          height: 50, // Fixed height
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
                topLeft: Radius.circular(12.0),
                bottomLeft: Radius.circular(12.0)),
            // image: DecorationImage(
            //   image: AssetImage(imagePath),
            //   fit: BoxFit.cover,
            // ),
            color: const Color.fromARGB(255, 252, 233, 196),
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
            children: [
              // Background blur
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                  child: Container(
                    width: maxWidth, // Match the full width of the parent
                    height: 60.0, // Match the fixed height
                    color: Colors.black.withOpacity(0), // Optional dark overlay
                  ),
                ),
              ),
              // Content inside the MiniMacroTracker
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      macroTitle,
                      style: const TextStyle(
                          color: Color.fromARGB(180, 0, 0, 0),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500),
                    ),
                    const VerticalDivider(
                      color: Color.fromARGB(180, 0, 0, 0),
                      thickness: 1.0,
                    ),
                    Text(
                      '$macroCount/$macroGoal grams',
                      style: const TextStyle(
                          color: Color.fromARGB(180, 0, 0, 0),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500),
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
