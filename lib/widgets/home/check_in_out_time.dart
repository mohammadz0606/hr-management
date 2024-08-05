import 'package:flutter/material.dart';


class CheckInOutTime extends StatelessWidget {
  const CheckInOutTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Check In: 09:00 AM'),
        SizedBox(height: 5),
        Divider(
          endIndent: 11,
        ),
        SizedBox(height: 5),
        Text('Check Out: 09:00 AM'),
      ],
    );
  }
}
