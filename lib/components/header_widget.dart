import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var ukuran = MediaQuery.of(context).size;
    return Container(
      width: ukuran.width,
      height: 150,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.amber[300],
          image: DecorationImage(
              image: AssetImage("assets/images/header.jpg"),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(5)),
    );
  }
}
