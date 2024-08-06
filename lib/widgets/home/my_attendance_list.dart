import 'package:flutter/material.dart';

import '../attendance/attendance.dart';

class MyAttendanceList extends StatelessWidget {
  const MyAttendanceList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return const Attendance();
      },
    );
  }
}
