import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hr_management/helper/colors.dart';
import 'package:meta/meta.dart';

import '../../data/models/my_actions_ui.dart';

part 'my_actions_state.dart';

class MyActionsCubit extends Cubit<MyActionsState> {
  MyActionsCubit() : super(MyActionsInitial());

  List<MyActionsUi> myActionsList = const [
    MyActionsUi(
      id: 1,
      title: 'Attendance',
      bgColor: AppColors.greenColor,
      iconColor: AppColors.lightGreen,
      iconData: Icons.timer_outlined,
    ),
    MyActionsUi(
        id: 2,
        title: 'Leave Request',
        bgColor: AppColors.lightOrange,
        iconData: Icons.timelapse,
        iconColor: Colors.orange),
    MyActionsUi(
      id: 3,
      title: 'Attach Sick Leave',
      bgColor: AppColors.lightPink,
      iconColor: AppColors.pinkColor,
      iconData: Icons.person_pin_circle_rounded,
    ),
    MyActionsUi(
      id: 4,
      title: 'Vacation Request',
      bgColor: AppColors.lightPurple,
      iconData: Icons.calendar_month_outlined,
      iconColor: AppColors.purpleColor,
    ),
  ];
}
