import 'package:flutter/material.dart';
import 'package:covidtrack/Screens/Dw1/Sliderlayout.dart';

class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: onBordingBody(),
    );
  }
}

Widget onBordingBody() => Container(
  child: SliderLayoutView(

  ),
);
