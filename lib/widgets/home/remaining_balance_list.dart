import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_management/helper/extensions.dart';

import '../../cubits/remaining_balance/remaining_balance_cubit.dart';
import '../../helper/colors.dart';
import '../card.dart';


class RemainingBalanceList extends StatelessWidget {
  const RemainingBalanceList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const ClampingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: BlocProvider.of<RemainingBalanceCubit>(context)
          .myRemainingBalance
          .length,
      itemBuilder: (context, index) {
        return InkWell(
          borderRadius: BorderRadius.circular(10),
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          onTap: () {
            log(index.toString());
          },
          child: CustomCard(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    child: Text(
                      'Annual Vacation',
                      style: const TextStyle(
                        fontSize: 18,
                        color: AppColors.secondary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '30',
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColors.dayTextColor,
                          ),
                        ),
                        TextSpan(
                          text: ' / ',
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColors.secondary,
                          ),
                        ),
                        TextSpan(
                          text: DateTime.now().getTotalDayInMonth(),
                          style: const TextStyle(
                            fontSize: 17,
                            color: AppColors.secondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Days',
                    style: const TextStyle(
                      fontSize: 18,
                      color: AppColors.secondary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(width: 10);
      },
    );
  }
}
