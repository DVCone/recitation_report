import 'package:flutter/material.dart';
import 'package:recitation_report/style/style.dart';
import 'package:recitation_report/widget/global_widget/access_denied.dart';
import 'package:recitation_report/widget/home_widget/student_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "Halaqah Qur'an",
              style: appTitle,
            ),
          ),
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraits) {
              if (constraints.maxWidth <= 360) {
                return const DaftarSiswa(gridCount: 1);
              } else if (constraits.maxWidth <= 750) {
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
      },
    );
  }
}
