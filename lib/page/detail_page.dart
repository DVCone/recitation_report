import 'package:flutter/material.dart';
import 'package:recitation_report/model/student_model.dart';
import 'package:recitation_report/style/style.dart';
import 'package:recitation_report/widget/student_card.dart';
import 'package:recitation_report/widget/access_denied.dart';
import 'package:recitation_report/widget/table_card.dart';

class DetailPage extends StatefulWidget {
  final StudentModel? elementUser;

  const DetailPage({Key? key, this.elementUser}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Halaqah Qur'an",
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
                    StudentCard(elementUser: widget.elementUser),
                  ],
                ),
                bigSpace,
                const Text(
                  "Laporan Hapalan",
                  style: title,
                ),
                mediumSpace,
                _createDataTable(widget.elementUser),
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
}

_createDataTable(StudentModel? elementUser) {
  List<DataRow> rows = [];

  for (var row in elementUser!.setoran) {
    rows.add(
      DataRow(
        cells: [
          DataCell(
            Text(
              row['tanggal'],
              textAlign: TextAlign.center,
              style: rowTable,
            ),
          ),
          DataCell(
            Text(
              row['surat'],
              textAlign: TextAlign.center,
              style: rowTable,
            ),
          ),
          DataCell(
            Text(
              row['ayat_terakhir'].toString(),
              textAlign: TextAlign.center,
              style: rowTable,
            ),
          ),
        ],
      ),
    );
  }

  return TableCard(
    rows: rows,
    elementUser: elementUser,
  );
}
