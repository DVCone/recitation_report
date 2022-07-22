import 'package:flutter/material.dart';
import 'package:recitation_report/model/student_model.dart';
import 'package:recitation_report/style/style.dart';

class TableCard extends StatelessWidget {
  const TableCard({
    Key? key,
    required this.rows,
    required this.elementUser,
  }) : super(key: key);

  final List<DataRow> rows;
  final StudentModel? elementUser;

  @override
  Widget build(BuildContext context) {
    List<DataColumn> _createColumns(elementUser) {
      return [
        const DataColumn(
          label: Text(
            'Tanggal',
            textAlign: TextAlign.center,
            style: columnTable,
          ),
        ),
        const DataColumn(
          label: Text(
            'Surat \n Terakhir',
            textAlign: TextAlign.center,
            style: columnTable,
          ),
        ),
        const DataColumn(
          label: Text(
            'Ayat \n Terakhir',
            textAlign: TextAlign.center,
            style: columnTable,
          ),
        ),
      ];
    }

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 4.0,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: DataTable(
          columns: _createColumns(elementUser),
          rows: rows,
        ),
      ),
    );
  }
}
