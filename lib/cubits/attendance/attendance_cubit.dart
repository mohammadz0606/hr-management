import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/attendance_menu.dart';

part 'attendance_state.dart';

class AttendanceCubit extends Cubit<AttendanceState> {
  AttendanceCubit() : super(AttendanceInitial());

  final List<AttendanceMenu> attendanceMenuList = const [
    AttendanceMenu(id: 1, text: 'This Month'),
    AttendanceMenu(id: 1, text: 'This Week'),
    AttendanceMenu(id: 1, text: 'This Day'),
  ];

  AttendanceMenu? valueAttendanceMenu;

  void onChangeDropdownMenu(AttendanceMenu value) {
    valueAttendanceMenu = value;
    emit(AttendanceChangeDropdownMenuState());
  }

  void resetDropdownMenu() {
    valueAttendanceMenu = null;
    emit(AttendanceResetDropdownMenuState());
  }
}
