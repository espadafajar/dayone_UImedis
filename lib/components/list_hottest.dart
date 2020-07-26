import 'package:dayone_resep/data/hottest_data.dart';
import 'package:flutter/material.dart';

class ListHottest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var ukuran = MediaQuery.of(context).size;
    return Container(
      width: ukuran.width,
      height: 200,
      margin: EdgeInsets.only(top: 20),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            width: 150,
            height: 180,
            margin: EdgeInsets.only(
                left: index == 0 ? 20 : 5, right: index == listHottest.length-1 ? 20 : 0),
            decoration: BoxDecoration(color: Colors.grey.shade100),
            child: Column(
              children: <Widget>[
                Expanded(
                    child: Container(
                      width: ukuran.width,
                      height: ukuran.height,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(listHottest[index].photo),
                              fit: BoxFit.cover),
                          color: Colors.blue[300]),
                    ),
                    flex: 5),
                Expanded(
                    child: Container(
                      width: ukuran.width,
                      height: ukuran.height,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(color: Colors.white),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Myprotein Adult Multivitamin e and c and multiproduct",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: "\$ ",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: "300",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ]),
                              ),
                              ButtonTheme(
                                minWidth: 30,
                                height: 25,
                                child: FlatButton(
                                  splashColor: Colors.deepPurple[200],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(25),
                                          topLeft: Radius.circular(25))),
                                  color: Colors.deepPurple[400],
                                  onPressed: () {},
                                  child: Text(
                                    "Buy",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    flex: 4),
              ],
            ),
          );
        },
        itemCount: listHottest.length,
      ),
    );
  }
}
