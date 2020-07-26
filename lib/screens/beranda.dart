import 'package:dayone_resep/components/custom_appbar.dart';
import 'package:dayone_resep/components/header_widget.dart';
import 'package:dayone_resep/components/list_hottest.dart';
import 'package:dayone_resep/components/menu_home.dart';
import 'package:dayone_resep/components/search_widget.dart';
import 'package:dayone_resep/components/title_header_hottest.dart';
import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    var ukuran = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: ukuran.width,
          height: ukuran.height,
          decoration: BoxDecoration(color: Colors.grey.shade100),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                CustomAppbar(),
                SearchWidget(),
                HeaderWidget(),
                MenuHome(),
                TitleHeaderHottest(
                  title: "Hottest",
                ),
                ListHottest(),
                TitleHeaderHottest(
                  title: "Latest",
                ),
                ListHottest(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
