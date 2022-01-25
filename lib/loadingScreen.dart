// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:untitled1/constant/titletext.dart';
import 'package:untitled1/pages/home_page.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  void initState() {
    super.initState();
    // startTime();
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  // startTime() async {
  //   var duration = const Duration(seconds: 3);
  //   return Timer(duration, route);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  'assets/images/loadimage.jpg',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                    bottom: 218,
                    left: 130,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'Explore',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    )),
                Positioned(
                    bottom: 215,
                    left: 212,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const TitleText(
                          text: 'This Wonderful world',
                        )
                      ],
                    )),
                Positioned(
                    bottom: 145,
                    left: 157,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white24,
                          radius: 30,
                          child: IconButton(
                            onPressed: () => route(),
                            icon: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        )
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
