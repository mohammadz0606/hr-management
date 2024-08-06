import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/attendance/attendance_cubit.dart';
import '../../custom_widgets/dropdown.dart';
import '../../data/models/attendance_menu.dart';
import '../title_widget.dart';

class AttendanceHeader extends StatefulWidget {
  const AttendanceHeader({super.key});

  @override
  State<AttendanceHeader> createState() => _AttendanceHeaderState();
}

class _AttendanceHeaderState extends State<AttendanceHeader> {
  late AttendanceCubit _attendanceCubit;

  @override
  void initState() {
    _attendanceCubit = BlocProvider.of<AttendanceCubit>(context);
    super.initState();
  }

  @override
  void dispose() {
    _attendanceCubit.resetDropdownMenu();
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
            text: 'My Attendance',
          ),
        ),
        Expanded(
          child: BlocBuilder<AttendanceCubit, AttendanceState>(
            builder: (context, state) {
              return CustomDropdown(
                value: _attendanceCubit.valueAttendanceMenu ??
                    _attendanceCubit.attendanceMenuList.first,
                items: _attendanceCubit.attendanceMenuList.map(
                  (e) {
                    return DropdownMenuItem<AttendanceMenu>(
                      value: e,
                      child: Text(e.text),
                    );
                  },
                ).toList(),
                onChanged: (value) =>
                    _attendanceCubit.onChangeDropdownMenu(value),
              );
            },
          ),
        ),
      ],
    );
  }
}
