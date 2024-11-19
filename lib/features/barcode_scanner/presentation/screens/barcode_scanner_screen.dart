// lib\features\home\presentation\screens\home_screen.dart

import 'package:flutter/material.dart';
import 'package:foodpro/app.dart';

class BarcodeScannerScreen extends StatelessWidget {
  const BarcodeScannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Column(
        children: [Text("Barcode Screen")],
      )),
    );
  }
}
