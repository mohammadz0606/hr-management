import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/leave_request/leave_request_cubit.dart';
import 'leave_request.dart';

class LeaveRequestList extends StatefulWidget {
  const LeaveRequestList({super.key});

  @override
  State<LeaveRequestList> createState() => _LeaveRequestListState();
}

class _LeaveRequestListState extends State<LeaveRequestList> {
  late LeaveRequestCubit leaveRequestCubit;

  @override
  void initState() {
    leaveRequestCubit = BlocProvider.of<LeaveRequestCubit>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: leaveRequestCubit.leaveRequestList.length,
      itemBuilder: (context, index) {
        return LeaveRequest(
          leaveRequest: leaveRequestCubit.leaveRequestList[index],
        );
      },
    );
  }
}
