import 'package:digistarts/result.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart ' as http;
import 'dart:convert';
import 'dart:async';
import 'pag_login.dart';

void main() {
   runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
       // home: PagLogin(),
        routes: {
          '/login': (context) => PagLogin(),
          '/result': (context) => ResultPage(),
        },
        initialRoute: '/login',

  ));
}

