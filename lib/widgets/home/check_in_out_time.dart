import 'package:flutter/material.dart';
import 'package:hr_management/helper/colors.dart';
import 'package:hr_management/helper/extensions.dart';

class CheckInOutTime extends StatelessWidget {
  const CheckInOutTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text.rich(
            TextSpan(
              style: const TextStyle(
                color: AppColors.secondary,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              children: [
                const TextSpan(text: 'Check In: '),
                TextSpan(
                  text: DateTime.now().getTimeFromDate(),
                  style: const TextStyle(
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 5),
        Divider(
          endIndent: 10,
        ),
        SizedBox(height: 5),
        FittedBox(
          child: Text.rich(
            TextSpan(
              style: TextStyle(
                color: AppColors.secondary,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              children: [
                TextSpan(text: 'Check Out: '),
                TextSpan(
                  text: DateTime.now().getTimeFromDate(),
                  style: const TextStyle(
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
