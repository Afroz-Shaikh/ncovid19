import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class aboutme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('About'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // RichText(
              //   text: TextSpan(
              //     text:
              //         'Built & Developed by Shaikh Afroz',
              //         ,
              //     style: TextStyle(color: Colors.black, fontSize: 18),
              //   ),
              // ),
              Center(
                  child: Text(
                'Built & developed By Shaikh Afroz',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),
              )),
              Center(
                child: FlatButton(
                    onPressed: () {
                      showAboutDialog(
                      
                        context: context,
                        applicationVersion: 'Version : 2.0.3',
                        applicationName: 'ncovid19',
                        applicationLegalese:
                            'Not affiliated to any Hospital or any health organisation',
                        applicationIcon: Icon(Icons.info),
                      
                      );
                    },
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'More info',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      color: Colors.red,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
