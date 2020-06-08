import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Homepanel extends StatelessWidget {
  final Map worldData;

  const Homepanel({Key key, this.worldData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 25.0,
          ),
          Center(
              child: Container(
            child: Image.asset(
              'Images/World.png',
            ),
          )),
//            Spacer(),
          SizedBox(
            height: 30.0,
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Column(
                children: <Widget>[
                  Panel(
                    title: 'Total Confirmed',
                    count: worldData['cases'].toString(),
                    textcolor: Colors.red,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Panel(
                    title: 'Total Deaths',
                    textcolor: Colors.red,
                    count: worldData['deaths'].toString(),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Panel(
                    title: 'Total Recovered',
                    textcolor: Colors.greenAccent,
                    count: worldData['recovered'].toString(),
                  ),
                ],
              ),
            ),
          ),
//Expanded(child: Container(width: 50.0,height: 50.0,))
          Card(
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'Covid-19 \nScreening Tool',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Card(
                      color: Colors.red,
                      child: InkWell(
                        onTap: _launchURL,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  'Learn More',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                        ),
                      ),
                    )
                  ],
                ),

                //    Expanded(child: Container(height: 30.0,),),

                Image.asset('Images/health.png')
              ],
            ),
          )
//              worldData ==null?CircularProgressIndicator():world_Data

          ,
          SizedBox(
            height: 40.0,
          ),
          Card(),
        ],
      ),
    );
  }
}

class Panel extends StatelessWidget {
  final String title;
  final String count;
  final Color textcolor;

  const Panel({Key key, this.title, this.count, this.textcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 33.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          FittedBox(
              fit: BoxFit.fill,
              child: Text(
                count,
                style: TextStyle(
                    color: textcolor,
                    fontSize: 33.0,
                    fontWeight: FontWeight.normal),
              )),
        ],
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://www.apple.com/covid/';
  if (await canLaunch(url)) {
    await launch(url, forceWebView: false);
  } else {
    throw 'Could not launch $url';
  }
}
