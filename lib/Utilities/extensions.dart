import 'package:flutter/material.dart';

extension DateTimeExtension on TimeOfDay {
  DateTime toDateTime() {
    DateTime timeNow = DateTime.now();
    return DateTime(timeNow.year, timeNow.month, timeNow.day, hour, minute);
  }
}