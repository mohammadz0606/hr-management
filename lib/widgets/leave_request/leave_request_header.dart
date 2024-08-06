import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/leave_request/leave_request_cubit.dart';
import '../../custom_widgets/dropdown.dart';
import '../../data/models/attendance_menu.dart';
import '../title_widget.dart';

class LeaveRequestHeader extends StatefulWidget {
  const LeaveRequestHeader({super.key});

  @override
  State<LeaveRequestHeader> createState() => _LeaveRequestHeaderState();
}

class _LeaveRequestHeaderState extends State<LeaveRequestHeader> {
  late LeaveRequestCubit _leaveRequestCubit;
  @override
  void initState() {
    _leaveRequestCubit = BlocProvider.of<LeaveRequestCubit>(context);
    super.initState();
  }

  @override
  void dispose() {
    _leaveRequestCubit.resetDropdownMenu();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
          flex: 2,
          child: TitleWidget(
            text: 'Leave Request Info',
          ),
        ),
        Expanded(
          child: BlocBuilder<LeaveRequestCubit, LeaveRequestState>(
            builder: (context, state) {
              return CustomDropdown(
                value: _leaveRequestCubit.valueAttendanceMenu ??
                    _leaveRequestCubit.leaveRequestMenuList.first,
                items: _leaveRequestCubit
                    .leaveRequestMenuList
                    .map(
                      (e) {
                    return DropdownMenuItem<AttendanceMenu>(
                      value: e,
                      child: Text(e.text),
                    );
                  },
                ).toList(),
                onChanged: (value) =>
                    _leaveRequestCubit.onChangeDropdownMenu(value),
              );
            },
          ),
        ),
      ],
    );
  }
}
