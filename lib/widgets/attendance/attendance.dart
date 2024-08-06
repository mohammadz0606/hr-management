import 'package:flutter/material.dart';
import 'package:hr_management/helper/extensions.dart';

import '../../helper/colors.dart';
import '../../custom_widgets/card.dart';

class Attendance extends StatelessWidget {
  const Attendance({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildColumn(text: 'Date', data: DateTime.now().formatFullDate()),
            _buildColumn(
                text: 'In Time', data: DateTime.now().getTimeFromDate()),
            _buildColumn(
                text: 'Out Time', data: DateTime.now().getTimeFromDate()),
          ],
        ),
      ),
    );
  }

  Column _buildColumn({required String text, required String data}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
            color: AppColors.secondary,
          ),
        ),
        Text(
          data,
          style: const TextStyle(
              color: AppColors.darkGray, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
