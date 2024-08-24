import 'package:flutter/material.dart';
import 'package:foodpro/core/utils/app_theme.dart';

class HomeSearchBar extends StatelessWidget {
  final String prompt;
  HomeSearchBar({required this.prompt});

  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
          color: Colors.orange[100], borderRadius: BorderRadius.circular(12.0)),
      child: Row(
        children: [
          Image.asset(
            'lib/assets/icons/search_bar.png',
            width: 24,
            height: 24,
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
