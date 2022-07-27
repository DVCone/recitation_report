import 'package:flutter/material.dart';
import 'package:recitation_report/model/student_model.dart';
import 'package:recitation_report/style/style.dart';

class TableCard extends StatelessWidget {
  const TableCard({
    Key? key,
    required this.elementUser,
    required this.columnSize,
    required this.rowSize,
    required this.columnSpace,
  }) : super(key: key);

  final StudentModel? elementUser;

  final double columnSize;
  final double rowSize;
  final double columnSpace;

  @override
  Widget build(BuildContext context) {
    List<DataRow> rows = [];

    for (var row in elementUser!.setoran) {
      rows.add(
        DataRow(
          cells: [
            DataCell(
              Text(
                row['tanggal'],
                textAlign: TextAlign.center,
                style: rowTable.copyWith(fontSize: rowSize),
              ),
            ),
            DataCell(
              Text(
                row['surat'],
                textAlign: TextAlign.center,
                style: rowTable.copyWith(fontSize: rowSize),
              ),
            ),
            DataCell(
              Text(
                row['ayat_terakhir'].toString(),
                textAlign: TextAlign.center,
                style: rowTable.copyWith(fontSize: rowSize),
              ),
            ),
          ],
        ),
      );
    }

    List<DataColumn> _createColumns(elementUser) {
      return [
        DataColumn(
          label: Text(
            'Tanggal',
            textAlign: TextAlign.center,
            style: columnTable.copyWith(fontSize: columnSize),
          ),
        ),
        DataColumn(
          label: Text(
            'Surat \n Terakhir',
            textAlign: TextAlign.center,
            style: columnTable.copyWith(fontSize: columnSize),
          ),
        ),
        DataColumn(
          label: Text(
            'Ayat \n Terakhir',
            textAlign: TextAlign.center,
            style: columnTable.copyWith(fontSize: columnSize),
          ),
        ),
      ];
    }

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 4.0,
      child: DataTable(
        columnSpacing: columnSpace,
        columns: _createColumns(elementUser),
        rows: rows,
      ),
    );
  }
}
