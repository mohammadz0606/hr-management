import 'package:flutter/material.dart';
import 'package:hr_management/helper/extensions.dart';

import '../../custom_widgets/card.dart';
import '../../data/models/leave_request.dart';
import '../../helper/colors.dart';

class LeaveRequest extends StatelessWidget {
  const LeaveRequest({
    super.key,
    required this.leaveRequest,
  });

  final LeaveRequestModel leaveRequest;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildColumn(text: 'Date', data: DateTime.now().formatDate()),
            _buildColumn(
                text: 'From', data: DateTime.now().getFullTimeFromDate()),
            _buildColumn(text: 'To', data: DateTime.now().getTimeFromDate()),
            Text(
              leaveRequest.typeLeaveRequest.string,
              style: TextStyle(
                color: leaveRequest.typeLeaveRequest.color,
                fontSize: 16,
              ),
            ),
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
