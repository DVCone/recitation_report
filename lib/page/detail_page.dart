import 'package:flutter/material.dart';
import 'package:recitation_report/model/student_model.dart';
import 'package:recitation_report/style/style.dart';
import 'package:recitation_report/widget/day_list.dart';
import 'package:recitation_report/widget/student_card.dart';
import 'package:recitation_report/widget/access_denied.dart';
import 'package:recitation_report/widget/table_card.dart';

class DetailPage extends StatelessWidget {
  final StudentModel? elementUser;

  const DetailPage({
    Key? key,
    this.elementUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Size: ${MediaQuery.of(context).size.width}",
          style: appTitle,
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
            child: ListView(
              children: [
                const Text(
                  "Data Siswa",
                  style: title,
                ),
                mediumSpace,
                Stack(
                  children: [
                    studentCardWidth(context, constraints),
                  ],
                ),
                bigSpace,
                const Text(
                  "Absensi Kehadiran",
                  style: title,
                ),
                mediumSpace,
                Stack(
                  children: [
                    dayListPage(context, constraints),
                  ],
                ),
                bigSpace,
                const Text(
                  "Laporan Hapalan",
                  style: title,
                ),
                mediumSpace,
                reportCardWidt(context, constraints),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return const AccessDenied();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  studentCardWidth(BuildContext context, BoxConstraints constraints) {
    if (constraints.maxWidth <= 360) {
      return StudentCard(
        elementUser: elementUser,
        widthSize: 320,
        imageSize: 120,
        subtitleSize: 12,
        titleSize: 15,
        paddingSize: 25,
        attendanceSize: 50,
      );
    } else if (constraints.maxWidth <= 480) {
      return StudentCard(
        elementUser: elementUser,
        widthSize: 450,
        imageSize: 130,
        titleSize: 20,
        subtitleSize: 15,
        paddingSize: 20,
        attendanceSize: 110,
      );
    } else {
      return StudentCard(
        elementUser: elementUser,
        widthSize: 450,
        imageSize: 130,
        titleSize: 20,
        subtitleSize: 15,
        paddingSize: 20,
        attendanceSize: 130,
      );
    }
  }

  reportCardWidt(BuildContext context, BoxConstraints constraints) {
    if (constraints.maxWidth <= 360) {
      return TableCard(
        elementUser: elementUser,
        columnSize: 11,
        rowSize: 10,
      );
    } else {
      return TableCard(
        elementUser: elementUser,
        columnSize: 15,
        rowSize: 12,
      );
    }
  }

  dayListPage(BuildContext context, BoxConstraints constraints) {
    if (constraints.maxWidth <= 360) {
      return const DayList(
        attendanceSize: 50,
        subtitleSize: 12,
        widthSize: 320,
      );
    } else if (constraints.maxWidth <= 480) {
      return const DayList(
        attendanceSize: 110,
        subtitleSize: 15,
        widthSize: 450,
      );
    } else {
      return const DayList(
        attendanceSize: 130,
        subtitleSize: 15,
        widthSize: 450,
      );
    }
  }
}