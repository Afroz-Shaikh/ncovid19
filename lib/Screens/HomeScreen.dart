import 'dart:convert';
import 'package:covidtrack/Screens/tips.dart';

import 'package:covidtrack/Screens/Setting_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'package:covidtrack/Screens/Countpag.dart';
//import 'package:covidtrack/widgets/Dw1.dart';
import 'package:http/http.dart' as http;
import 'package:covidtrack/Screens/Hpanel.dart';

class HomeScreen extends StatefulWidget {
  final String confir;
  final String death;
  final String recov;

  const HomeScreen({Key key, this.confir, this.death, this.recov}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Map worldData;
  fetchWorldData()async{
    http.Response response =await http.get('https://corona.lmao.ninja/v2/all');
  setState(() {
    worldData = json.decode(response.body);
//        json.decode(response.body);
  });
  }
@override
  void initState() {
    fetchWorldData();

    super.initState();
  }



//final Map world_Data;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Color(0xff1e1e1e),
           body: worldData==null?Center(child: CircularProgressIndicator(backgroundColor: Colors.red,)):Homepanel(worldData:worldData,)
        ,
bottomNavigationBar: BottomAppBar(
  color: Colors.black,
  child: Row(
    children: <Widget>[
      SizedBox(height: 20.0,width: 20.0,),
      IconButton(icon: Icon(Icons.search,color: Colors.red,),onPressed: (){Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CP1()),
      );},),
      SizedBox(height: 20.0,width: 2.0,),
      IconButton(icon: Icon(Icons.lightbulb_outline,color: Colors.greenAccent,), onPressed:  (){Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Tips()),
      );},),
      Expanded(child: Container(
        height: 20.0,
      ),),
      IconButton(icon: Icon(Icons.settings,color: Colors.red,), onPressed:  (){Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Settin()),
      );},),
      
    ],
  ),
),
//        bottomNavigationBar: BottomNavigationBar(   ),//      HomePanel()
      ),

    );
  }
}
