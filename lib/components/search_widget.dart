import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var ukuran = MediaQuery.of(context).size;
    return Container(
      width: ukuran.width,
      margin: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey.shade100,
          border: Border.all(color: Colors.grey.shade500)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Search for",
            style: TextStyle(color: Colors.grey.shade500),
          ),
          Icon(
            Icons.search,
            size: 20,
            color: Colors.grey.shade400,
          )
        ],
      ),
    );
  }
}
