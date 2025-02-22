import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:untitled1/constant/headingtext.dart';
import 'package:untitled1/constant/sizebox.dart';
import 'package:untitled1/constant/subheadingtext.dart';
import 'package:untitled1/constant/titletext.dart';

class InfoPage extends StatefulWidget {
  final String title;
  final String about;
  final String image;
  final String country;
  const InfoPage(
      {super.key,
      required this.title,
      required this.about,
      required this.country,
      required this.image});

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 450,
                backgroundColor: Colors.white,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              widget.image,
                            ),
                            fit: BoxFit.cover)),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              colors: [
                            Colors.black,
                            Colors.black.withOpacity(.3)
                          ])),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                HeadingTextW(
                                  text: widget.title,
                                ),
                                const Spacer(),
                                const Icon(Icons.favorite, color: Colors.grey),
                              ],
                            ),
                            const SizeBox8(),
                            RatingBarIndicator(
                              rating: 4.5,
                              itemBuilder: (context, index) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              itemCount: 5,
                              itemSize: 18.0,
                              direction: Axis.horizontal,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SubHeading(
                            text: 'About',
                          ),
                        ),
                        Container(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: TitleText(
                              text: widget.about,
                            )),
                      ],
                    ),
                  )
                ]),
              )
            ],
          ),
          Positioned.fill(
            bottom: 30,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: 50,
                        child: Align(
                            child: TextButton(
                          onPressed: () {},
                          child: const Icon(
                            Icons.bookmark_add_outlined,
                            size: 40,
                          ),
                        ))),
                    const Spacer(),
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue[900],
                        ),
                        onPressed: () {},
                        child: const SubHeading(
                          text: 'Book a trip',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
