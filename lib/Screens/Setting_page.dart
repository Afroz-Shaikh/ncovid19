import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:covidtrack/Screens/about.dart';

class Settin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        backgroundColor: Color(0xff242424),
    appBar:
    AppBar(
    centerTitle: true,
    backgroundColor: Colors.red,
    title: Text('Settings'),
    actions: <Widget>[


    ],


    ),
      body: Column(
        children: <Widget>[
          Card(color: Colors.black,child: Container(child: InkWell(
            onTap: _launchDonate,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 7, 4, 4),
              child: Text('Donate for COVID relief',style: TextStyle(color: Colors.white),),
            ),
          ),width: double.infinity,height: 35.0,),),
          Card(color: Colors.black,child: Container(child: InkWell(
            onTap: _launchFAQ,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 7, 4, 4),
              child: Text(' Covid FAQ ',style: TextStyle(color: Colors.white),),
            ),
          ),width: double.infinity,height: 35.0,),),
          Card(color: Colors.black12,child: Container(child: InkWell(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 7, 4, 4),
              child: Text('Support Developer',style: TextStyle(color: Colors.white),),
            ),
          ),width: double.infinity,height: 35.0,),),Card(color: Colors.black,child: Container(child: InkWell(
            onTap:  (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => aboutme()),
            );},
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 7, 4, 4),
              child: Text('About',style: TextStyle(color: Colors.white),),
            ),
          ),width: double.infinity,height: 35.0,),),
        ],
      )
    );
  }
}





_launchDonate() async {
  const url = 'https://covid19responsefund.org';
  if (await canLaunch(url)) {
    await launch(url, forceWebView: false)

    ;
  } else {
    throw 'Could not launch $url';
  }
}


_launchFAQ() async {
  const url = 'https://www.who.int/csr/disease/coronavirus_infections/faq_dec12/en/';
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true)

    ;
  } else {
    throw 'Could not launch $url';
  }
}
