import 'package:flutter_riverpod/flutter_riverpod.dart';

// Global provider for managing selectedIndex across the app
final selectedIndexProvider = StateProvider<int>((ref) => 0);
