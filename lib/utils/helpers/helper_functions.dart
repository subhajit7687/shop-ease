import 'package:flutter/material.dart';

class HelperFunctions {
  HelperFunctions._();

  static Color? getColor(String value) => switch (value) {
    'Green' => Colors.green,
    'Red' => Colors.red,
    'Blue' => Colors.blue,
    'Pink' => Colors.pink,
    'Grey' => Colors.grey,
    'Purple' => Colors.purple,
    'Black' => Colors.black,
    'White' => Colors.white,
    'Yellow' => Colors.yellow,
    'Orange' => Colors.orange,
    'Brown' => Colors.brown,
    'Teal' => Colors.teal,
    'Indigo' => Colors.indigo,
    _ => null,
  };

  static void showSnackbar(BuildContext context, String message) =>
      ScaffoldMessenger.of(context)
        ..clearSnackBars()
        ..showSnackBar(SnackBar(content: Text(message)));

  static void showAlert(BuildContext context, String title, String message) =>
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('OK'),
            ),
          ],
        ),
      );

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  static bool isDarkMode(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;

  static Size getScreenSize(BuildContext context) =>
      MediaQuery.of(context).size;

  static List<T> removeDuplicates<T>(List<T> list) => list.toSet().toList();

  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(
        i,
        i + rowSize > widgets.length ? widgets.length : i + rowSize,
      );
      wrappedList.add(Row(children: rowChildren));
    }
    return wrappedList;
  }
}
