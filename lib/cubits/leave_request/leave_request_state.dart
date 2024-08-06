part of 'leave_request_cubit.dart';

@immutable
sealed class LeaveRequestState {}

final class LeaveRequestInitial extends LeaveRequestState {}

final class LeaveRequestChangeDropdownMenuState extends LeaveRequestState {}

final class LeaveRequestResetDropdownMenuState extends LeaveRequestState {}