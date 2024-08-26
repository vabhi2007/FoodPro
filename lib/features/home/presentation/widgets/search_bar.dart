import 'package:flutter/material.dart';
import 'package:foodpro/core/utils/app_theme.dart';

class HomeSearchBar extends StatelessWidget {
  final String prompt;
  HomeSearchBar({required this.prompt});

  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
        color: const Color.fromARGB(255, 252, 233, 196),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12.0), // Round top-left corner
          topRight: Radius.circular(12.0), // Round top-right corner
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            'lib/assets/icons/search_bar.png',
            width: 18,
            height: 18,
          ),
          const SizedBox(width: 8.0),
          Expanded(
              child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: prompt,
                hintStyle: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400)),
          )),
        ],
      ),
    );
  }
}
