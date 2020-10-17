import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Kategori extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: getKategori(),
      builder: (context, snapshot) {
        if(snapshot.hasData){
          return ListView.builder(itemBuilder: (context, index){
            return FlatButton(
              onPressed: () {},
              child: Text(snapshot.data[index]['kategori']),
            );
          }, itemCount: snapshot.data.length,);
        }else{
          return Center(child: CircularProgressIndicator());
        }
      },
    ));
  }
}

Future<Map<String, dynamic>> getKategori() async{
  final response = await http.get("http://kebudayaan.sumbawakab.go.id/api/get_kategori", headers: {"Accept" : "application/json"});

  var convertdataJson = jsonDecode(response.body);

  return convertdataJson;
}