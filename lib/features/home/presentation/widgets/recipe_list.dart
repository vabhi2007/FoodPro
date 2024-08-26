import 'package:flutter/material.dart';

class RecipeList extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {'name': 'Chicken Pasta', 'image': 'lib/assets/images/chicken_pasta.png'},
    {'name': 'Nachos', 'image': 'lib/assets/images/nachos.png'},
    {'name': 'Chicken Pasta', 'image': 'lib/assets/images/chicken_pasta.png'},
    {'name': 'Nachos', 'image': 'lib/assets/images/nachos.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: recipes.map((recipe) {
          return Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Container(
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 130.0,
                        height: 130.0,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(12.0),
                            bottomRight: Radius.circular(12.0),
                          ),
                          image: DecorationImage(
                            image: AssetImage(recipe['image']!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 130.0,
                        height: 130.0,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(12.0),
                            bottomRight: Radius.circular(12.0),
                          ),
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.8),
                              Colors.black.withOpacity(0.4),
                              Colors.transparent,
                              Colors.transparent,
                              Colors.transparent,
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: const Alignment(0, 0.6),
                          child: Container(
                            width: 70, // Set the maximum width for the text
                            child: Text(
                              recipe['name']!,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                                shadows: [
                                  Shadow(
                                    blurRadius: 4.0,
                                    color: Colors.black.withOpacity(0.5),
                                  ),
                                ],
                              ),
                              maxLines: 2, // Set a maximum number of lines
                              overflow: TextOverflow
                                  .ellipsis, // Handle overflow with ellipsis
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
