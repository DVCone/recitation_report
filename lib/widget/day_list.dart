import 'package:flutter/material.dart';
import 'package:recitation_report/style/style.dart';
import 'package:recitation_report/widget/attendance_check.dart';

class DayList extends StatelessWidget {
  const DayList({
    Key? key,
    required this.attendanceSize,
    required this.subtitleSize,
  }) : super(key: key);

  final double attendanceSize;
  final double subtitleSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: attendanceSize,
            ),
            Column(
              children: [
                const AttendaceCheck(),
                Text(
                  "Hari 1",
                  style: rowTable.copyWith(
                    fontSize: subtitleSize,
                  ),
                ),
              ],
            ),
            smallWideSpace,
            Column(
              children: [
                const AttendaceCheck(),
                Text(
                  "Hari 2",
                  style: rowTable.copyWith(
                    fontSize: subtitleSize,
                  ),
                ),
              ],
            ),
            smallWideSpace,
            Column(
              children: [
                const AttendaceCheck(),
                Text(
                  "Hari 3",
                  style: rowTable.copyWith(
                    fontSize: subtitleSize,
                  ),
                ),
              ],
            ),
          ],
        ),
        smallSpace,
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: attendanceSize,
            ),
            Column(
              children: [
                const AttendaceCheck(),
                Text(
                  "Hari 4",
                  style: rowTable.copyWith(
                    fontSize: subtitleSize,
                  ),
                ),
              ],
            ),
            smallWideSpace,
            Column(
              children: [
                const AttendaceCheck(),
                Text(
                  "Hari 5",
                  style: rowTable.copyWith(
                    fontSize: subtitleSize,
                  ),
                ),
              ],
            ),
            smallWideSpace,
            Column(
              children: [
                const AttendaceCheck(),
                Text(
                  "Hari 6",
                  style: rowTable.copyWith(
                    fontSize: subtitleSize,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
