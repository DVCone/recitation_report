import 'package:flutter/material.dart';
import 'package:recitation_report/style/style.dart';
import 'package:recitation_report/widget/attendance_check.dart';

class DayList extends StatelessWidget {
  const DayList({
    Key? key,
    required this.attendanceSize,
    required this.subtitleSize,
    required this.widthSize,
  }) : super(key: key);

  final double widthSize;
  final double attendanceSize;
  final double subtitleSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthSize,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 4.0,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: attendanceSize,
                  ),
                  Column(
                    children: [
                      const CheckIcon(isCheck: true),
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
                      const CheckIcon(isCheck: true),
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
                      const CheckIcon(isCheck: true),
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
                      const CheckIcon(isCheck: true),
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
                      const CheckIcon(isCheck: false),
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
                      const CheckIcon(isCheck: false),
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
          ),
        ),
      ),
    );
  }
}
