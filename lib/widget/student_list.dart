import 'package:flutter/material.dart';
import 'package:recitation_report/model/student_model.dart';
import 'package:recitation_report/page/detail_page.dart';
import 'package:recitation_report/style/style.dart';

class DaftarSiswa extends StatelessWidget {
  const DaftarSiswa({Key? key, required this.gridCount}) : super(key: key);

  final int gridCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    horizontal: 24.0, vertical: 8.0),
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
                    smallSpace,
                    Text(
                      elementUser.name,
                      textAlign: TextAlign.start,
                      style: title,
                    ),
                    verySmallSpace,
                    Text(
                      'Kelas ${elementUser.kelas}',
                      textAlign: TextAlign.start,
                      style: subtitle,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
