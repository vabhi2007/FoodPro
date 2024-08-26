import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../app_provider.dart';

class SearchBarTitle extends ConsumerWidget {
  final String title;
  final int targetPage;

  SearchBarTitle({required this.title, required this.targetPage});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 13.0,
              fontWeight: FontWeight.w400),
        ),
        IconButton(
          onPressed: () {
            ref.read(selectedIndexProvider.notifier).state = targetPage;
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
