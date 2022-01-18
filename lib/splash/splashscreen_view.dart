import 'package:flutter/material.dart';
import 'package:uas_19710100/Icon/my_flutter_app_icons.dart';
import 'dart:async';
import 'package:uas_19710100/home/home_view.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return HomePage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
          Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                MyFlutterApp.newspaper,
                size: 160.0,
              ),
              Text(
                'News App',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0,
                ),
              ),
            ]),
          ),
        ])));
  }
}
