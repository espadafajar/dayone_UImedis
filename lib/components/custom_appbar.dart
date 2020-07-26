import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var ukuran = MediaQuery.of(context).size;
    return Container(
      height: 50,
      width: ukuran.width,
      padding: EdgeInsets.symmetric(horizontal: 20),
      // decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "Fajar",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text: ", ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text: "hi",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ]),
          ),
          CircleAvatar(
            backgroundColor: Colors.green[400],
            backgroundImage: AssetImage("assets/images/avatar.jpg")
          )
        ],
      ),
    );
    // );
  }
}
