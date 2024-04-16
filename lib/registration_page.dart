import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class welcomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<welcomePage> {
  final _imagePaths = [
    'images/1.jpeg',
    'images/2.png',
    'images/3.png',
  ];

  get callbackFunction => null;
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Center(
            child: CarouselSlider(
              items: _imagePaths.map((imagePath) {
                return Builder(builder: (context) {
                  return Container(
                    width: 7000,
                    height: 6000,
                    margin: EdgeInsets.symmetric(horizontal: 90),
                    child: Image.asset(
                      imagePath,
                      height: 5000,
                      width: 6000,
                    ),
                  );
                });
              }).toList(),
              options: CarouselOptions(onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: AnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: _imagePaths.length,
            ),
          ),
        ]),
      ),
    ));
  }
}
