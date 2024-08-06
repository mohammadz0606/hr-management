import 'package:flutter/material.dart';
import 'package:hr_management/custom_widgets/button.dart';

import '../custom_widgets/scroll_view.dart';
import '../widgets/app_bar.dart';
import '../widgets/get_title_name.dart';
import '../widgets/leave_request/leave_request_header.dart';
import '../widgets/leave_request/leave_request_list.dart';

class LeaveRequestScreen extends StatelessWidget {
  const LeaveRequestScreen({super.key});

  static const String route = 'leave_request_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, leadingWidth: 30),
      body: CustomSingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const GetTitleName(),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                text: 'Request Leave',
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 20),
            const LeaveRequestHeader(),
            const SizedBox(height: 20),
            const LeaveRequestList(),
          ],
        ),
      ),
    );
  }
}
