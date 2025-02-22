// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/constant/avatar.dart';
import 'package:untitled1/constant/headingtext.dart';
import 'package:untitled1/constant/sizebox.dart';
import 'package:untitled1/constant/subheadingtext.dart';
import 'package:untitled1/constant/titletext.dart';
import 'package:untitled1/data_for_image/image_data.dart';
import 'package:untitled1/data_for_image/model.dart';
import 'package:untitled1/pages/infopage.dart';

class Body0 extends StatefulWidget {
  const Body0({super.key});

  @override
  _Body0State createState() => _Body0State();
}

class _Body0State extends State<Body0> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 4, initialIndex: 0);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  var carouselOptions = CarouselOptions(
    enableInfiniteScroll: false,
    height: 480,
    enlargeCenterPage: true,
  );

  Widget _buldCard0(context, index, realIdx) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => InfoPage(
                        about: islandDetails[index].about,
                        title: islandDetails[index].title,
                        image: islandDetails[index].url,
                        country: islandDetails[index].country,
                      )));
        },
        child: Stack(
          children: <Widget>[
            Image.asset(
              islandDetails[index].url,
              fit: BoxFit.fitWidth,
              height: 480,
            ),
            Positioned(
                bottom: 12.0,
                left: 12.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    HeadingText(
                      text: islandDetails[index].title,
                    ),
                    TitleText(
                      text: islandDetails[index].country,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Widget _buldCard1(context, index, realIdx) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => InfoPage(
                        about: citieDetails[index].about,
                        title: citieDetails[index].title,
                        image: citieDetails[index].url,
                        country: citieDetails[index].country,
                      )));
        },
        child: Stack(
          children: <Widget>[
            Image.asset(
              citieDetails[index].url,
              fit: BoxFit.fitWidth,
              height: 480,
            ),
            Positioned(
                bottom: 12.0,
                left: 12.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    HeadingText(
                      text: citieDetails[index].title,
                    ),
                    TitleText(
                      text: citieDetails[index].country,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Widget _buldCard2(context, index, realIdx) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => InfoPage(
                        about: beacheDetails[index].about,
                        title: beacheDetails[index].title,
                        image: beacheDetails[index].url,
                        country: beacheDetails[index].country,
                      )));
        },
        child: Stack(
          children: <Widget>[
            Image.asset(
              beacheDetails[index].url,
              fit: BoxFit.fitWidth,
              height: 480,
            ),
            Positioned(
                bottom: 12.0,
                left: 12.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    HeadingText(
                      text: beacheDetails[index].title,
                    ),
                    TitleText(
                      text: beacheDetails[index].country,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Widget _buldCard3(context, index, realIdx) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => InfoPage(
                        about: desertDetails[index].about,
                        title: desertDetails[index].title,
                        image: desertDetails[index].url,
                        country: desertDetails[index].country,
                      )));
        },
        child: Stack(
          children: <Widget>[
            Image.asset(
              desertDetails[index].url,
              fit: BoxFit.fitWidth,
              height: 480,
            ),
            Positioned(
                bottom: 12.0,
                left: 12.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    HeadingText(
                      text: desertDetails[index].title,
                    ),
                    TitleText(
                      text: desertDetails[index].country,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Avatar(height: 50, photoUrl: dummyData[0].imgUrl),
                const SizeBox18(),
                const SubHeading(text: 'Welcome'),
                const SizeBox8(),
                HeadingText(text: dummyData[0].name),
                const SizeBox8(),
                const Padding(
                    padding: EdgeInsets.only(right: 70.0),
                    child: TitleText(
                        text:
                            '"The world is a book and those who do not travel read only one page"')),
                const SizeBox18(),
                SizedBox(
                  height: 50.0,
                  child: DefaultTabController(
                    length: 4,
                    child: TabBar(
                      indicatorWeight: 2,
                      labelPadding: EdgeInsets.all(12),
                      unselectedLabelColor: Colors.blue,
                      controller: controller,
                      labelColor: Colors.blue[900],
                      tabs: const [
                        Tab(text: 'Islands'),
                        Tab(text: 'Cities'),
                        Tab(text: 'Beaches'),
                        Tab(text: 'Deserts'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SizedBox(
                    height: 450.0,
                    child: TabBarView(
                      controller: controller,
                      children: [
                        CarouselSlider.builder(
                            itemCount: islandDetails.length,
                            options: carouselOptions,
                            itemBuilder: _buldCard0),
                        CarouselSlider.builder(
                            itemCount: beacheDetails.length,
                            options: carouselOptions,
                            itemBuilder: _buldCard1),
                        CarouselSlider.builder(
                            itemCount: desertDetails.length,
                            options: carouselOptions,
                            itemBuilder: _buldCard2),
                        CarouselSlider.builder(
                            itemCount: citieDetails.length,
                            options: carouselOptions,
                            itemBuilder: _buldCard3),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ]),
    );
  }
}
