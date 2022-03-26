import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/SplashScreenWidget.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreenWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}
