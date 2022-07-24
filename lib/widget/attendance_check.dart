import 'package:flutter/material.dart';

class AttendaceCheck extends StatefulWidget {
  const AttendaceCheck({Key? key}) : super(key: key);

  @override
  State<AttendaceCheck> createState() => _AttendaceCheckState();
}

class _AttendaceCheckState extends State<AttendaceCheck> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 18.0,
      icon: Icon(
        isFavorite ? Icons.check_circle_rounded : Icons.check_circle_outline_rounded,
        color: Colors.lightBlue,
        size: 20,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
