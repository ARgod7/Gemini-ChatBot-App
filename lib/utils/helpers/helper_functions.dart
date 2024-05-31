import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AHelperFunctions {
  static Color? getColor(String value) {
    if (value == 'green') {
      return Colors.green;
    } else if (value == 'red') {
      return Colors.red;
    } else if (value == 'blue') {
      return Colors.blue;
    } else if (value == 'pink') {
      return Colors.pink;
    } else if (value == 'grey') {
      return Colors.grey;
    } else if (value == 'purple') {
      return Colors.purple;
    } else if (value == 'brown') {
      return Colors.brown;
    } else if (value == 'white') {
      return Colors.white;
    } else if (value == 'black') {
      return Colors.black;
    } else if (value == 'cyan') {
      return Colors.cyan;
    } else if (value == 'indigo') {
      return Colors.indigo;
    } else if (value == 'orange') {
      return Colors.orange;
    } else if (value == 'lime') {
      return Colors.lime;
    } else if (value == 'teal') {
      return Colors.teal;
    } else {
      return null;
    }
  }

  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  static void showAlert(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            )
          ],
        );
      },
    );
  }

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}';
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static String getFormattedDate(DateTime date,
      {String format = 'dd-mm-yyyy'}) {
    return DateFormat(format).format(date);
  }

  static List<A> removeDuplicates<A>(List<A> list) {
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets(List<Widget> widget, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widget.length; i += rowSize) {
      final rowChildren = widget.sublist(
          i, i + rowSize > widget.length ? widget.length : i + rowSize);
      wrappedList.add(Row(children: rowChildren));
    }
    return wrappedList;
  }
}
