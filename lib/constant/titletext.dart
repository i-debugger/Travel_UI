import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String text;
  const TitleText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.black54,
        fontSize: 13,
        fontWeight: FontWeight.w700,
        decoration: TextDecoration.none,
      ),
    );
  }
}
