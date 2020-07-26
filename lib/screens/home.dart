
import 'package:dayone_resep/screens/beranda.dart';
import 'package:dayone_resep/screens/list_pages.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  _pilihIndex({index}) {
    setState(() {
      _currentIndex = index;
    });
  }


  final _myPages = [
    Beranda(),
    ListPages(),
    Container(
      child: Center(child: Text("Kosong Bruh"),),
    )
  ];

  @override
  Widget build(BuildContext context) {
    var ukuran = MediaQuery.of(context).size;
    return Scaffold(
        body: _myPages.elementAt(_currentIndex),
        bottomNavigationBar: Container(
          width: ukuran.width,
          height: 50,
          decoration: BoxDecoration(color: Colors.grey.shade100, boxShadow: [
            BoxShadow(blurRadius: 5, color: Colors.grey.shade300)
          ]),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    _pilihIndex(index: 0);
                  },
                  icon: Icon(
                    FontAwesomeIcons.home,
                    color: _currentIndex == 0
                        ? Colors.teal[400]
                        : Colors.grey.shade400,
                    size: 20,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    _pilihIndex(index: 1);
                  },
                  icon: Icon(
                    FontAwesomeIcons.solidListAlt,
                    size: 20,
                    color: _currentIndex == 1
                        ? Colors.teal[400]
                        : Colors.grey.shade400,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    _pilihIndex(index: 2);
                  },
                  icon: Icon(
                    FontAwesomeIcons.userAlt,
                    size: 20,
                    color: _currentIndex == 2
                        ? Colors.teal[400]
                        : Colors.grey.shade400,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
