import 'package:carousel_slider/carousel_slider.dart';
import 'package:dayone_resep/components/search_widget.dart';
import 'package:dayone_resep/components/title_header_hottest.dart';
import 'package:dayone_resep/data/hottest_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class ListPages extends StatefulWidget {
  @override
  _ListPagesState createState() => _ListPagesState();
}

class _ListPagesState extends State<ListPages> {
  int _currentIndex = 0;

  final _format = NumberFormat("#.#");

  void _changeIndex({index}) {
    setState(() {
      _currentIndex = index;
    });
  }

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
                SearchWidget(),
                Container(
                    height: 300,
                    child: CarouselSlider.builder(
                        itemCount: listApotek.length,
                        itemBuilder: (context, index) {
                          double subs = listApotek[index].subs > 1000
                              ? listApotek[index].subs / 1000
                              : listApotek[index].subs;
                          double visits = listApotek[index].visits > 1000
                              ? listApotek[index].visits / 1000
                              : listApotek[index].visits;
                          return Container(
                            width: ukuran.width,
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  offset: Offset(3, 3),
                                  color: Colors.grey.shade400)
                            ]),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    width: ukuran.width,
                                    height: ukuran.height,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            topRight: Radius.circular(5)),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                listApotek[index].photo),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    width: ukuran.width,
                                    height: ukuran.height,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(5),
                                            bottomRight: Radius.circular(5))),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          listApotek[index].title,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              listApotek[index].level,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.star,
                                                  size: 17,
                                                  color: Colors.amber,
                                                ),
                                                Text(
                                                  listApotek[index].rating,
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                        Text(
                                          "jalan kamboja nomor 15 kelurahan seketeng",
                                          maxLines: 1,
                                          style: TextStyle(fontSize: 11),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        // Spacer(),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        _currentIndex == index
                                            ? Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: _format
                                                              .format(subs)
                                                              .toString(),
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900,
                                                              color: Colors
                                                                  .black)),
                                                      TextSpan(
                                                          text: subs > 1
                                                              ? "k"
                                                              : "",
                                                          style: TextStyle(
                                                              fontSize: 11,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900,
                                                              color: Colors
                                                                  .black)),
                                                    ]),
                                                  ),
                                                  RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: _format
                                                              .format(visits)
                                                              .toString(),
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900,
                                                              color: Colors
                                                                  .black)),
                                                      TextSpan(
                                                          text: visits > 1
                                                              ? "k"
                                                              : "",
                                                          style: TextStyle(
                                                              fontSize: 11,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900,
                                                              color: Colors
                                                                  .black)),
                                                    ]),
                                                  ),
                                                  FittedBox(
                                                    child: CircleAvatar(
                                                      child: Icon(
                                                        FontAwesomeIcons
                                                            .telegram,
                                                        color: Colors.white,
                                                        size: 16,
                                                      ),
                                                      backgroundColor:
                                                          Colors.blue[700],
                                                      radius: 15,
                                                    ),
                                                  )
                                                ],
                                              )
                                            : Container()
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        options: CarouselOptions(
                          onPageChanged: (index, reason) {
                            _changeIndex(index: index);
                          },
                          height: 275,
                          enableInfiniteScroll: false,
                          enlargeCenterPage: true,
                          initialPage: _currentIndex,
                        ))),
                TitleHeaderHottest(
                  title: "Hospital",
                ),
                SizedBox(
                  height: 20,
                ),
                for (var hospital in listHospital)
                  Container(
                    width: ukuran.width,
                    height: 90,
                    margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        boxShadow: [
                          BoxShadow(blurRadius: 4, color: Colors.grey.shade400)
                        ]),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Container(
                              width: ukuran.width,
                              height: ukuran.height,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: AssetImage(hospital.photo),
                                      fit: BoxFit.cover)),
                            ),
                            flex: 1),
                        Expanded(
                            child: Container(
                              width: ukuran.width,
                              height: ukuran.height,
                              decoration: BoxDecoration(color: Colors.white),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    hospital.title,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        hospital.level,
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.star,
                                            size: 17,
                                            color: Colors.amber,
                                          ),
                                          Text(
                                            hospital.rating,
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "jalan kamboja nomor 15 kelurahan seketeng",
                                    maxLines: 1,
                                    style: TextStyle(fontSize: 11),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                            flex: 2),
                      ],
                    ),
                  ),
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
