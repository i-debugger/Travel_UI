import 'package:flutter/material.dart';
import 'package:untitled1/constant/avatar.dart';
import 'package:untitled1/constant/inputdecoration.dart';
import 'package:untitled1/constant/sizebox.dart';
import 'package:untitled1/data_for_image/model.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SizeBox24(),
            Avatar(height: 120, photoUrl: dummyData[0].imgUrl),
            const SizeBox24(),
            const SizeBox24(),
            DisplayTextField(
              hinttext: dummyData[0].name,
              icon: const Icon(
                Icons.person,
                color: Colors.blue,
              ),
            ),
            const SizeBox24(),
            DisplayTextField(
              hinttext: dummyData[0].email,
              icon: const Icon(
                Icons.mail,
                color: Colors.blue,
              ),
            ),
            const SizeBox24(),
            DisplayTextField(
              hinttext: dummyData[0].contact,
              icon: const Icon(
                Icons.phone,
                color: Colors.blue,
              ),
            ),
            const SizeBox24(),
            DisplayTextField(
              hinttext: dummyData[0].site,
              icon: const Icon(
                Icons.http,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
