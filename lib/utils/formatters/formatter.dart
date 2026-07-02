import 'package:intl/intl.dart';

class Formatter {
  Formatter._();

  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyy').format(date);
  }

  static String formatCurrency(double amount) =>
      NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);

  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      return '+91 ${phoneNumber.substring(0, 5)} ${phoneNumber.substring(5)}';
    }

    return phoneNumber;
  }
}
