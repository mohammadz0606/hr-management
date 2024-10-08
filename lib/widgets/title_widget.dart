import 'package:flutter/material.dart';

import '../helper/colors.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        color: AppColors.secondary,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
