import 'package:intl/intl.dart';

extension DateFormated on DateTime {
  String getTotalDayInMonth() {
    return DateTime(year, month + 1, 0).day.toString();
  }

  String getFullTimeFromDate() {
    return DateFormat('hh:mm a').format(this);
  }

  String getTimeFromDate() {
    return DateFormat('hh:mm').format(this);
  }

  String formatDate() {
    return DateFormat('d MMMM y').format(this);
  }
}