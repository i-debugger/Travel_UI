import 'package:flutter/material.dart';
import 'package:untitled1/constant/headingtext.dart';
import 'package:untitled1/constant/sizebox.dart';
import 'package:untitled1/constant/subheadingtext.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeadingText(text: 'Saved Items'),
          SizedBox(height: 250),
          Center(
              child: Icon(
            Icons.bookmark,
            size: 50,
          )),
          SizeBox12(),
          Center(child: SubHeading(text: 'Your saved item display here'))
        ],
      ),
    );
  }
}
