import 'package:flutter/material.dart';
import 'package:recitation_report/model/student_model.dart';
import 'package:recitation_report/style/style.dart';

class StudentCard extends StatelessWidget {
  const StudentCard({
    Key? key,
    required this.elementUser,
    // required this.widthCount,
  }) : super(key: key);

  final StudentModel? elementUser;

  // final double widthCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
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
              wideSpace,
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
                  smallSpace,
                  Text(
                    "Kelas: ${elementUser!.kelas}",
                    style: const TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  verySmallSpace,
                  const Text(
                    "Deskripsi: -",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  veryBigSpace,
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
