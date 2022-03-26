import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:serede/screens/login/loginSplashScreen.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 8,
          backgroundColor: Colors.white,
          navigateAfterSeconds: LoginSplashScreen(),
          loaderColor: Colors.transparent,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: new LinearGradient(
                colors: [const Color(0xFF915FB2), const Color(0xffca436b)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  width: 400,
                  height: 400,
                  child: FlareActor(
                    "assets/images/splash/oi.flr",
                    animation: "serede",
                    fit: BoxFit.contain,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
