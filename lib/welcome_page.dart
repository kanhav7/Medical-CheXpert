import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_chexpert/splash_screen.dart';
//import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

int activeIndex = 0;

class _MyAppState extends State<WelcomePage> {
  final _imagePaths = [
    'images/1.jpeg',
    'images/2.png',
    'images/3.png',
  ];

  get callbackFunction => null;
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Builder(
            builder: (context) {
              final double height = MediaQuery.of(context).size.height;
              return CarouselSlider(
                options: CarouselOptions(
                  height: height,
                  viewportFraction: 1.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  initialPage:0,
                  animateToClosest: true,
                  scrollPhysics: BouncingScrollPhysics(),
                    onPageChanged: (index, reason) {
                      setState(() {
                        activeIndex = index;
                      });
                    }
                ),
                items: _imagePaths
                    .map((item) => Container(
                  child: Center(
                      child: Image.asset(
                        item,
                        fit: BoxFit.cover,
                        height: height,
                      )),
                ))
                    .toList(),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            heightFactor: 50,
            child: Container(
              decoration: BoxDecoration(

              ),
              margin: EdgeInsets.only(bottom: 50),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SplashScreen()));
                  },
                  child: Text(
                      'SKIP',
                    style: GoogleFonts.poppins(
                      color: Colors.black
                    ),
                  ),
                style: ButtonStyle(
                  elevation: MaterialStatePropertyAll(2),
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15)
                      )
                    )
                  )

                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: AnimatedSmoothIndicator(
                activeIndex: activeIndex,
                count: _imagePaths.length,
                effect: WormEffect(
                  activeDotColor: Color(0xFF90CDF9),
                  dotColor: Colors.grey.shade300
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
