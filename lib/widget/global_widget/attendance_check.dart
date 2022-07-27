import 'package:flutter/material.dart';

class CheckIcon extends StatefulWidget {
  final bool isCheck;

  const CheckIcon({
    Key? key,
    required this.isCheck, 
  }) : super(key: key);

  @override
  State<CheckIcon> createState() => _CheckIconState();
}

class _CheckIconState extends State<CheckIcon> {
  late bool checked = widget.isCheck;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 18.0,
      icon: Icon(
        checked
            ? Icons.check_circle_rounded
            : Icons.check_circle_outline_rounded,
        color: Colors.lightBlue,
        size: 20,
      ),
      onPressed: () {
        setState(() {
          checked = !checked;
        });
      },
    );
  }
}