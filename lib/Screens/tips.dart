import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:covidtrack/Screens/Carouselpag.dart';

class Tips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(backgroundColor: Color(0xff1e1e1e),
appBar: AppBar(
  backgroundColor: Colors.red,
  centerTitle: true,
  title: Text('Tips'),
),
//        backgroundColor: Colors.blue,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 7.0,),
              Card(
                color: Colors.black,
                child:   Row(

                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: <Widget>[

                    Column(
                      children: <Widget>[
                        FittedBox(fit:BoxFit.fitWidth ,child:Text('View Tips  \nand Precautions',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),),
                        Card(color: Colors.red,child: InkWell(onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Carousel()),
                          );
                        }  ,child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: FittedBox(fit:BoxFit.fitWidth ,child:Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('Learn More',style: TextStyle(color: Colors.white),),
                          )),
                        ) ,),)
                      ],
                    ),


                    //    Expanded(child: Container(height: 30.0,),),

                    Image.asset('Images/health.png')

                  ],

                ),
              ),
              SizedBox(height: 10.0,),
              Card(
                color: Colors.black,
                child:   Row(

                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: <Widget>[

                    Column(
                      children: <Widget>[
                        FittedBox(fit:BoxFit.fitWidth ,child:Text('Covid-19 \nScreening Tool',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),),
                        Card(color: Colors.red,child: InkWell(onTap: _launchURL2  ,child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: FittedBox(fit:BoxFit.fitWidth ,child:Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('Learn More',style: TextStyle(color: Colors.white),),
                          )),
                        ) ,),)
                      ],
                    ),


                    //    Expanded(child: Container(height: 30.0,),),

                    Image.asset('Images/health.png')

                  ],

                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                color: Colors.black,
                child:   Row(

                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: <Widget>[

                    Column(
                      children: <Widget>[
                        FittedBox(fit:BoxFit.fitWidth ,child:Text('Wash your Hands \nto your favoutite song',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),),
                        Card(color: Colors.red,child: InkWell(onTap: _launchURL  ,child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: FittedBox(fit:BoxFit.fitWidth ,child:Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('Learn More',style: TextStyle(color: Colors.white),),
                          )),
                        ) ,),)
                      ],
                    ),


                    //    Expanded(child: Container(height: 30.0,),),

                    Container(height: 70.0,child: Image.asset('Images/washing.png',))

                  ],

                ),
              ),
            ],
          ),
        ),


      ),
    );
  }
}



_launchURL() async {
  const url = 'https://washyourlyrics.com';
  if (await canLaunch(url)) {
    await launch(url, forceWebView: false)

    ;
  } else {
    throw 'Could not launch $url';
  }
}


_launchURL2() async {
  const url = 'https://www.apple.com/covid19';
  if (await canLaunch(url)) {
    await launch(url, forceWebView: false)

    ;
  } else {
    throw 'Could not launch $url';
  }
}
