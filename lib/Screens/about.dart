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
          RichText(
          text: TextSpan(
            text: '1.This App is in no way related or affiliated by WHO or any Govt. The app is built by a individual just for media purpose\n'
                '2. The links provided in this app are not developed by the same person who developed the app\n'
                '3. The number of cases and death are being broadcasted via an Api \n'
                '4.This app is not responsible for wrong data in any manner,its suggested to report us if any wrong data is found in our app\n'
                '5.This app does not have any advertisements and is opensource and is free to use\n the code of this app will be uploaded in Github contact the developer for the source code\n'
                '6.This app is not fully developed and might encounter a lot of bugs and issues\n'
                ''
                , style: TextStyle(color: Colors.black, fontSize: 18),
          ),)],
            
          ),
        ),
      ),
    );
  }
}
