import 'package:covidtrack/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter/services.dart';
void main() {
//  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
//      .then((_) {

  runApp(CovidApp(  ));
}
//}

class CovidApp extends StatefulWidget {
  @override
  _CovidAppState createState() => _CovidAppState();
}

class _CovidAppState extends State<CovidApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.red,
      systemNavigationBarColor: Colors.red,
    ));
//    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//        statusBarColor: Colors.red
//    ));
//    FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
