import 'dart:convert';
import 'package:http/http.dart ' as http;
import 'package:flutter/material.dart';

import 'API/api.dart';


class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

  /*void _pesquisa()async {
    http.Response response = await http.get(Uri.parse(URl_BASE),
        headers:{"Authorization": "Token 8b34c604f8c467c5950550f6870bde20dc5229fb"});

    Map<String, dynamic> retorno = jsonDecode(response.body);
    print("resultado" + retorno.toString());
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informação da Covid-19'),
      ),
      body: Container(
        color: Colors.black12,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          ],
        ),
      ),
    );
  }
}
