import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var ukuran = MediaQuery.of(context).size;
    return Container(
      width: ukuran.width,
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.pink[400],
                    borderRadius: BorderRadius.circular(15)),
                child: Icon(
                  FontAwesomeIcons.plus,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Register",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.teal[400],
                    borderRadius: BorderRadius.circular(15)),
                child: Icon(
                  FontAwesomeIcons.mortarPestle,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Health",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.orange[400],
                    borderRadius: BorderRadius.circular(15)),
                child: Icon(
                  FontAwesomeIcons.pills,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Medicine",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.blue[400],
                    borderRadius: BorderRadius.circular(15)),
                child: Icon(
                  FontAwesomeIcons.crown,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Member",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}
