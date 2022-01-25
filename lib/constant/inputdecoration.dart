import 'package:flutter/material.dart';

class DisplayTextField extends StatelessWidget {
  final String hinttext;
  final Icon icon;
  const DisplayTextField({Key? key, required this.hinttext, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      style: const TextStyle(
        fontWeight: FontWeight.w700,
      ),
      decoration: decoration.copyWith(
        hintText: hinttext,
        prefixIcon: icon,
      ),
    );
  }
}

var decoration = InputDecoration(
  filled: true,
  border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0), borderSide: BorderSide.none),
);
