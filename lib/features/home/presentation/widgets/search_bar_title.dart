import 'package:flutter/material.dart';

class SearchBarTitle extends StatelessWidget {
  final String title;
  final Widget targetPage;

  SearchBarTitle({required this.title, required this.targetPage});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16.0,
              fontWeight: FontWeight.w400), // Use headline6 from theme
        ),
        IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => targetPage));
          },
          icon: Image.asset(
            'lib/assets/icons/circle_arrow.png',
            width: 24,
            height: 24,
          ),
        ),
      ],
    );
  }
}
