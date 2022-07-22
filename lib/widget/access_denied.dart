import 'package:flutter/material.dart';
import 'package:recitation_report/style/style.dart';

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
        style: accessDeniedHeader,
      ),
      content: const Text(
        "Fitur ditutup untuk pengguna tamu. \n silahkan hubungi bagian tata usaha. \n\n Terimakasih.",
        textAlign: TextAlign.center,
        style: accessDeniedBody,
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            'Tutup',
            style: accessDeniedClose,
          ),
        ),
      ],
    );
  }
}
