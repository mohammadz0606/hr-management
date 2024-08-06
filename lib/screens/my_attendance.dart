import 'package:flutter/material.dart';

import '../widgets/app_bar.dart';
import '../widgets/attendance/all_attendance_list.dart';
import '../widgets/attendance/attendance_header.dart';
import '../widgets/get_title_name.dart';
import '../custom_widgets/scroll_view.dart';

class MyAttendanceScreen extends StatelessWidget {
  static const String route = 'my_attendance_screen';

  const MyAttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, leadingWidth: 30),
      body: const CustomSingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GetTitleName(),
            SizedBox(height: 30),
            AttendanceHeader(),
            SizedBox(height: 20),
            AllAttendanceList(),
          ],
        ),
      ),
    );
  }
}
