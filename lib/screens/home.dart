import 'package:flutter/material.dart';

import 'package:hr_management/custom_widgets/scroll_view.dart';

import '../custom_widgets/card.dart';
import '../widgets/get_title_name.dart';
import '../widgets/home/check_in.dart';
import '../widgets/home/check_in_out_time.dart';
import '../widgets/home/my_actions.dart';
import '../widgets/home/my_attendance_list.dart';
import '../widgets/home/remaining_balance_list.dart';
import '../widgets/title_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const GetTitleName(),
          const SizedBox(height: 20),
          const TitleWidget(
            text: 'Check In/Out',
          ),
           const CustomCard(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                   Expanded(
                    child: CheckInOutTime(),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CheckIn(),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const TitleWidget(
            text: 'My Remaining Balance',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.18,
            child: const RemainingBalanceList(),
          ),
          const SizedBox(height: 20),
          const TitleWidget(
            text: 'My Actions',
          ),
          const MyActions(),
          const SizedBox(height: 20),
          const TitleWidget(
            text: 'My Attendance',
          ),
          const MyAttendanceList(),
        ],
      ),
    );
  }
}
