import 'package:flutter/material.dart';
import 'package:recitation_report/home_page.dart';
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
        title: Text(
          "Size: ${MediaQuery.of(context).size.width}",
          style: const TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          studentCardWidth() {
            if (constraints.maxWidth <= 600) {
              return StudentCard(
                elementUser: widget.elementUser,
                widthCount: 350.0,
              );
            } else {
              return StudentCard(
                elementUser: widget.elementUser,
                widthCount: 350.0,
              );
            }
          }

          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
            child: ListView(
              children: [
                const Text(
                  "Data Siswa",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Stack(
                  children: [
                    studentCardWidth(),
                  ],
                ),
                const SizedBox(
                  height: 50.0,
                ),
                const Text(
                  "Laporan Hapalan",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
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

class StudentCard extends StatelessWidget {
  const StudentCard({
    Key? key,
    required this.elementUser,
    required this.widthCount,
  }) : super(key: key);

  final StudentModel? elementUser;

  final double widthCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthCount,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 4.0,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 120.0,
                width: 120.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(7.0),
                  child: Image.asset(
                    elementUser!.avatar,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 20.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nama: ${elementUser!.name}",
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Kelas: ${elementUser!.kelas}",
                    style: const TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Text(
                    "Deskripsi: -",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 55.0,
                  ),
                ],
              )
            ],
          ),
        ),
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
              style: const TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          DataCell(
            Text(
              row['surat'],
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          DataCell(
            Text(
              row['ayat_terakhir'].toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<DataColumn> _createColumns(elementUser) {
    return [
      const DataColumn(
        label: Text(
          'Tanggal',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            color: Colors.lightBlue,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Surat \n Terakhir',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            color: Colors.lightBlue,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Ayat \n Terakhir',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            color: Colors.lightBlue,
          ),
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
