import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.deepPurpleAccent, // background color
        borderRadius: BorderRadius.circular(15), //border radius
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Warna bayangan dan opasitas
            spreadRadius: 5, // Penyebaran shadow
            blurRadius: 7, // Ukuran blur shadow
            offset: Offset(0, 3), // Posisi bayangan (x, y)
          ),
        ],
      ),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28, color: Colors.white), 
        textAlign: TextAlign.center,
      ),
    );
  }
}
