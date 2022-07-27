import 'package:flutter/material.dart';
import 'package:recitation_report/model/student_model.dart';
import 'package:recitation_report/style/style.dart';

class StudentCard extends StatelessWidget {
  const StudentCard({
    Key? key,
    required this.elementUser,
    required this.widthSize,
    required this.imageSize,
    required this.titleSize,
    required this.subtitleSize,
    required this.paddingSize,
  }) : super(key: key);

  final StudentModel? elementUser;

  final double widthSize;
  final double imageSize;
  final double titleSize;
  final double subtitleSize;
  final double paddingSize;

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
          padding:
              EdgeInsets.symmetric(vertical: 10.0, horizontal: paddingSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: imageSize,
                    width: imageSize,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7.0),
                      child: Image.asset(
                        elementUser!.avatar,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: paddingSize,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nama: ${elementUser!.name}",
                        style: TextStyle(
                          fontSize: titleSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      smallSpace,
                      Text(
                        "Kelas: ${elementUser!.kelas}",
                        style: TextStyle(
                          fontSize: subtitleSize,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      verySmallSpace,
                      Text(
                        "Deskripsi: -",
                        style: TextStyle(
                          fontSize: subtitleSize,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      bigSpace,
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}