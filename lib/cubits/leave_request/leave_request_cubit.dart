import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/attendance_menu.dart';
import '../../data/models/leave_request.dart';

part 'leave_request_state.dart';

class LeaveRequestCubit extends Cubit<LeaveRequestState> {
  LeaveRequestCubit() : super(LeaveRequestInitial());

  final List<AttendanceMenu> leaveRequestMenuList = const [
    AttendanceMenu(id: 1, text: 'This Month'),
    AttendanceMenu(id: 1, text: 'This Week'),
    AttendanceMenu(id: 1, text: 'This Day'),
  ];

  final List<LeaveRequestModel> leaveRequestList = [
    LeaveRequestModel(id: 1, typeLeaveRequest: TypeLeaveRequest.pending),
    LeaveRequestModel(id: 2, typeLeaveRequest: TypeLeaveRequest.rejected),
    LeaveRequestModel(id: 3, typeLeaveRequest: TypeLeaveRequest.approved),
    LeaveRequestModel(id: 4, typeLeaveRequest: TypeLeaveRequest.pending),
    LeaveRequestModel(id: 5, typeLeaveRequest: TypeLeaveRequest.rejected),
    LeaveRequestModel(id: 6, typeLeaveRequest: TypeLeaveRequest.approved),
    LeaveRequestModel(id: 7, typeLeaveRequest: TypeLeaveRequest.approved),
    LeaveRequestModel(id: 8, typeLeaveRequest: TypeLeaveRequest.rejected),
    LeaveRequestModel(id: 9, typeLeaveRequest: TypeLeaveRequest.rejected),
    LeaveRequestModel(id: 10, typeLeaveRequest: TypeLeaveRequest.pending),
    LeaveRequestModel(id: 11, typeLeaveRequest: TypeLeaveRequest.pending),
  ];

  AttendanceMenu? valueAttendanceMenu;

  void onChangeDropdownMenu(AttendanceMenu value) {
    valueAttendanceMenu = value;
    emit(LeaveRequestChangeDropdownMenuState());
  }

  void resetDropdownMenu() {
    valueAttendanceMenu = null;
    emit(LeaveRequestResetDropdownMenuState());
  }
}
