import 'dart:io';

import 'package:flutter/material.dart';
import 'package:serede/screens/home/components/profileUser.dart';

class HeaderWidget extends StatefulWidget {
  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  Future<bool> _onBackPressed() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(
                "Quer realmente sair",
                style: TextStyle(
                  color: Colors.blueAccent,
                ),
              ),
              actions: <Widget>[
                FlatButton(
                  child: Text("Não"),
                  onPressed: () => Navigator.pop(context, false),
                ),
                FlatButton(
                  child: Text("Sim"),
                  onPressed: () => exit(0),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.12,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(color: Color(0xFFFF6D00).withOpacity(0.5), blurRadius: 5)
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
            ),
            color: Color(0xFFFF6D00),
            iconSize: 32,
            onPressed: _onBackPressed,
          ),
          profile(),
        ],
      ),
    );
  }
}
