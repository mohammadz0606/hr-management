import 'package:flutter/material.dart';

import 'package:hr_management/helper/colors.dart';
import 'package:hr_management/widgets/scroll_view.dart';

import '../widgets/card.dart';
import '../widgets/home/check_in.dart';
import '../widgets/home/check_in_out_time.dart';
import '../widgets/home/remaining_balance_list.dart';
import '../widgets/home/title_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome Mohammad',
            style: TextStyle(
              fontSize: 22,
              color: AppColors.darkGray,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 20),
          const TitleWidget(
            text: 'Check In/Out',
          ),
          CustomCard(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: CheckInOutTime(),
                  ),
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
            height: MediaQuery.of(context).size.height * 0.15,
            child: const RemainingBalanceList(),
          ),
          const SizedBox(height: 20),
          const TitleWidget(
            text: 'My Actions',
          ),
        ],
      ),
    );
  }
}
