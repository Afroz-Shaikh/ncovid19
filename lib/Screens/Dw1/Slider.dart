import 'package:flutter/cupertino.dart';
//import 'package:flutter_onboarding_ui_concept/constants/constants.dart';
import 'package:covidtrack/Screens/Dw1/Constants.dart';
class Slider {
  final String sliderImageUrl;
  final String sliderHeading;
  final String sliderSubHeading;

  Slider(
      {@required this.sliderImageUrl,
        @required this.sliderHeading,
        @required this.sliderSubHeading});
}

final sliderArrayList = [
  Slider(
      sliderImageUrl: 'Images/slider_1.png',
      sliderHeading: Constants.SLIDER_HEADING_1,
      sliderSubHeading: Constants.SLIDER_DESC),
  Slider(
      sliderImageUrl: 'Images/slider_2.png',
      sliderHeading: Constants.SLIDER_HEADING_2,
      sliderSubHeading: Constants.SLIDER_DESC),
  Slider(
      sliderImageUrl: 'Images/slider_3.png',
      sliderHeading: Constants.SLIDER_HEADING_3,
      sliderSubHeading: Constants.SLIDER_DESC),
  Slider(
      sliderImageUrl: 'Images/slider_4.png',
      sliderHeading: Constants.SLIDER_HEADING_4,
      sliderSubHeading: Constants.SLIDER_DESC),
  Slider(
      sliderImageUrl: 'Images/slider_5.png',
      sliderHeading: Constants.SLIDER_HEADING_5,
      sliderSubHeading: Constants.SLIDER_DESC),
];