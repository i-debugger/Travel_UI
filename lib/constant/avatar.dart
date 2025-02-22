import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key, this.photoUrl, this.height});
  final String? photoUrl;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: height,
      height: height,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(image: AssetImage(photoUrl!), fit: BoxFit.fill)),
    );
  }
}
