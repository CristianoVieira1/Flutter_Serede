import 'package:flutter/material.dart';

class SerachTextfield extends StatefulWidget {
  @override
  _SerachTextfieldState createState() => _SerachTextfieldState();
}

class _SerachTextfieldState extends State<SerachTextfield> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: _controller,
        style:
            TextStyle(color: Color(0xFFF234253), fontWeight: FontWeight.bold),
        decoration: InputDecoration(
            labelText: "Digite seu BA",
            labelStyle:
                TextStyle(color: Colors.grey[400], fontWeight: FontWeight.w500),
            prefixIcon: Icon(Icons.search, size: 28),
            fillColor: Color(0xFFFEAF2F4),
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(12),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(12),
            )));
  }
}
