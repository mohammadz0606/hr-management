import 'package:flutter/material.dart';

import '../../helper/colors.dart';

class LeaveRequestModel {
  final int id;
  final TypeLeaveRequest typeLeaveRequest;

  LeaveRequestModel({
    required this.id,
    required this.typeLeaveRequest,
  });
}

enum TypeLeaveRequest {
  pending,
  rejected,
  approved,
}

extension TypeLeaveRequestExtension on TypeLeaveRequest {
  String get string {
    switch (this) {
      case TypeLeaveRequest.pending:
        return 'Pending';
      case TypeLeaveRequest.rejected:
        return 'Rejected';
      case TypeLeaveRequest.approved:
        return 'Approved';
    }
  }

  Color get color {
    switch (this) {
      case TypeLeaveRequest.pending:
        return Colors.orange.shade200;
      case TypeLeaveRequest.rejected:
        return Colors.red;
      case TypeLeaveRequest.approved:
        return AppColors.greenColor;
    }
  }
}
