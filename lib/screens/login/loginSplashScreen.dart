import 'package:flutter/material.dart';
import 'package:serede/animations/fadeAnimation.dart';
import 'package:serede/screens/home/homeScreen.dart';

import 'components/buttomLoginAnimation.dart';

class LoginSplashScreen extends StatefulWidget {
  @override
  _LoginSplashScreenState createState() => _LoginSplashScreenState();
}

class _LoginSplashScreenState extends State<LoginSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            "assets/images/login/login.png",
            fit: BoxFit.cover,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color(0xFFF001117).withOpacity(0.7),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            margin: EdgeInsets.only(top: 80, bottom: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    FadeAnimation(
                        2.4,
                        Text(
                          'Pesquisa de BAs',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              letterSpacing: 2),
                        )),
                    SizedBox(
                      height: 40,
                    ),
                    FadeAnimation(
                        2.4, Image.asset("assets/images/logo/logo2.png")),
                  ],
                ),
                Column(
                  children: <Widget>[
                    FadeAnimation(
                        2.8,
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Desenvolvido para consultas de BA's",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    FadeAnimation(
                        3.2,
                        ButtonLoginAnimation(
                          label: "Entrar",
                          fontColor: Colors.white,
                          background: Color(0xFFFF6D00),
                          borderColor: Color(0xFFFB8C00),
                          child: HomeScreenPage(),
                        )),
                    SizedBox(height: 30)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

// http://intranet.serede.com.br/intranet2/#login
