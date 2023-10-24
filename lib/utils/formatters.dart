import 'package:intl/intl.dart';

class Formatters {
  static String formatHours(int hours) {
    return Intl.message(
        Intl.plural(hours, zero: 'hrs', one: 'hr', other: 'hrs'));
  }
}
