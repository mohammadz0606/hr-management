import 'package:flutter/material.dart';

import '../helper/colors.dart';

class GetTitleName extends StatelessWidget {
  const GetTitleName({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Welcome Mohammad',
      style: TextStyle(
        fontSize: 22,
        color: AppColors.darkGray,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
