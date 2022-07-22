import 'package:flutter/material.dart';
import 'package:recitation_report/detail_page.dart';
import 'package:recitation_report/model/student_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
        builder: (BuildContext context, BoxConstraints constraits) {
          if (constraits.maxWidth <= 600) {
            return const DaftarSiswa(gridCount: 2);
          } else if (constraits.maxWidth <= 1200) {
            return const DaftarSiswa(gridCount: 4);
          } else {
            return const DaftarSiswa(gridCount: 6);
          }
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

class AccessDenied extends StatelessWidget {
  const AccessDenied({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      title: const Text(
        "AKSES DITOLAK!",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.w700,
          color: Color(0xff990000),
        ),
      ),
      content: const Text(
        "Fitur ditutup untuk pengguna tamu. \n silahkan hubungi bagian tata usaha. \n\n Terimakasih.",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            'Tutup',
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      ],
    );
  }
}

class DaftarSiswa extends StatelessWidget {
  const DaftarSiswa({Key? key, required this.gridCount}) : super(key: key);

  final int gridCount;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: gridCount,
          mainAxisSpacing: 20,
          crossAxisSpacing: 15,
          primary: false,
          children: studentData.map((elementUser) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailPage(elementUser: elementUser);
                }));
              },
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 21.0, vertical: 7.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(7.0),
                          child: Image.asset(
                            elementUser.avatar,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        elementUser.name,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Kelas ${elementUser.kelas}',
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
