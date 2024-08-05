import 'package:flutter/material.dart';

class MyActionsUi {
  final int id;
  final Color bgColor;
  final Color iconColor;
  final IconData iconData;
  final String title;

  const MyActionsUi({
    required this.id,
    required this.bgColor,
    required this.iconData,
    required this.title,
    required this.iconColor,
  });
}
