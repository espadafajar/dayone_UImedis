import 'package:flutter/material.dart';

class TitleHeaderHottest extends StatelessWidget {
  final String title;
  TitleHeaderHottest({this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "More",
            style: TextStyle(fontSize: 15, color: Colors.blue[400]),
          ),
        ],
      ),
    );
  }
}
