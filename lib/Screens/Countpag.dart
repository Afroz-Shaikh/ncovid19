import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:covidtrack/Screens/Dw1/Search.dart';
class CP1 extends StatefulWidget {
  @override
  _CP1State createState() => _CP1State();
}

class _CP1State extends State<CP1> {
  List countryData;

  fetchCountryData() async {

    http.Response response =
    await http.get('https://corona.lmao.ninja/v2/countries');
    setState(() {
      countryData = json.decode(response.body);
    });
  }

  @override
  void initState() {
    fetchCountryData();
    super.initState();}
  @override

  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xff242424),
      appBar:
      AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text('Countries'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),onPressed: (){

            showSearch(context: context, delegate: Search(countryData));

          },)

        ],

      ),
      body:  countryData == null
          ? Center(
        child: CircularProgressIndicator(),
      )
          : ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            color: Colors.black,
            child: Container(
              height: 130,
              margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 100,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Image.network(
                          countryData[index]['countryInfo']['flag'],
                          height: 80,
                          width: 80,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 8.0),
                    child: Expanded(
                        child: Container(
                          child: Column(
                            children: <Widget>[
                          FittedBox(fit:BoxFit.fill ,child:Text(
                                countryData[index]['country'],
                                style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white ),
                              ),),
                          FittedBox(fit:BoxFit.fill ,child:Text(
                                'CONFIRMED:' +
                                    countryData[index]['cases'].toString(),
                                style: TextStyle(
                                fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              ),),
                          FittedBox(fit:BoxFit.fill ,child:Text(
                                'ACTIVE:' +
                                    countryData[index]['active'].toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              ),),
                          FittedBox(fit:BoxFit.fill ,child:Text(
                                'RECOVERED:' +
                                    countryData[index]['recovered'].toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green),
                              ),),
                          FittedBox(fit:BoxFit.fill ,child:Text(
                                'DEATHS:' +
                                    countryData[index]['deaths'].toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              ),)
                            ],
                          ),
                        )),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: countryData == null ? 0 : countryData.length,
      ),
    );
  }
}

