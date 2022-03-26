import 'package:flutter/material.dart';

Row profile() {
  return Row(
    children: <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            "Consulta de",
            style: TextStyle(
                color: Color(0xFFF2C4E5E), fontWeight: FontWeight.bold),
          ),
          Text(
            "BA's",
            style: TextStyle(
                color: Color(0xFFFF6D00), fontWeight: FontWeight.bold),
          ),
        ],
      ),
      SizedBox(
        width: 5,
      ),
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: Color(0xFFF2C4E5E),
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage("assets/images/home/ba.png"),
                fit: BoxFit.cover)),
      )
    ],
  );
}
