import 'package:flutter/material.dart';
import 'package:recitation_report/model/student_model.dart';

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
          'Laporan Hapalan',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return ListView(
          children: [
            _createDataTable(widget.elementUser),
          ],
        );
      }),
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
            Text(row['tanggal']),
          ),
          DataCell(
            Text(row['surat']),
          ),
          DataCell(
            Text(row['ayat_terakhir'].toString()),
          ),
        ],
      ),
    );
  }

  return DataTable(
    columns: _createColumns(),
    rows: rows,
  );
}

List<DataColumn> _createColumns() {
  return [
    const DataColumn(label: Text('Tanggal')),
    const DataColumn(label: Text('Surat Terakhir')),
    const DataColumn(label: Text('Ayat Terakhir')),
  ];
}
