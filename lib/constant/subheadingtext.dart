import 'package:flutter/material.dart';

class SubHeading extends StatelessWidget {
  final String text;
  const SubHeading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.black87,
        fontSize: 18,
        fontWeight: FontWeight.w700,
        decoration: TextDecoration.none,
      ),
    );
  }
}
