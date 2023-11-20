import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String formatDate(DateTime date) {
  var formatter = DateFormat('MM/dd/yyyy');
  return formatter.format(date);
}