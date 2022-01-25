import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  final String text;
  const HeadingText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.black,
        decoration: TextDecoration.none,
        fontSize: 32,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}

class HeadingTextW extends StatelessWidget {
  final String text;
  const HeadingTextW({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        decoration: TextDecoration.none,
        fontSize: 32,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
