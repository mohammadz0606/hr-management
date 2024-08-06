part of 'attendance_cubit.dart';

@immutable
sealed class AttendanceState {}

final class AttendanceInitial extends AttendanceState {}


final class AttendanceChangeDropdownMenuState extends AttendanceState {}

final class AttendanceResetDropdownMenuState extends AttendanceState {}
