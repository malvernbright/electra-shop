import 'dart:async';

import 'package:electra_shop/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), ()=>MaterialPageRoute(builder: (context)=>MyApp()));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Splash Screen")
    );
  }
}