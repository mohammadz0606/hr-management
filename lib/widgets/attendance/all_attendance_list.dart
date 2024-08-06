import 'package:flutter/material.dart';

import 'attendance.dart';


class AllAttendanceList extends StatelessWidget {
  const AllAttendanceList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 20,
      itemBuilder: (context, index) {
        return const Attendance();
      },
    );
  }
}
