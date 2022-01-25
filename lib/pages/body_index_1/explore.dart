import 'package:flutter/material.dart';
import 'package:untitled1/constant/headingtext.dart';
import 'package:untitled1/constant/sizebox.dart';
import 'package:untitled1/constant/subheadingtext.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeadingText(text: 'Search'),
          const SizeBox8(),
          TextFormField(
            autofocus: true,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
            ),
            decoration: InputDecoration(
              filled: true,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
              prefixIcon: const Icon(Icons.search),
              hintText: 'Search for places',
            ),
          ),
          const SizeBox18(),
          const SubHeading(text: 'Suggestion')
        ],
      ),
    );
  }
}
