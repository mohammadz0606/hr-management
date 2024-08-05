import 'package:intl/intl.dart';

extension DateFormated on DateTime {
  String getTotalDayInMonth() {
    return DateTime(year, month + 1, 0).day.toString();
  }

  String getTimeFromDate() {
    return DateFormat('hh:mm a').format(this);
  }
}