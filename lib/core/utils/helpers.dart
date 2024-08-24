// lib/core/utils/helpers.dart

class Helpers {
  static String formatDate(DateTime date) {
    return "${date.month}/${date.day}/${date.year}";
  }

  static String capitalize(String s) => s[0].toUpperCase() + s.substring(1);
}
