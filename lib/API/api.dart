import 'package:flutter/material.dart';
import 'package:http/http.dart ' as http;
import 'dart:convert';
import 'dart:async';

const CHAVE = "Token" "8b34c604f8c467c5950550f6870bde20dc5229fb";
const URl_BASE = "https://api.brasil.io/v1/dataset/covid19/caso/data/";

class Api {
  static Future getUserModel() async {
    var url = URl_BASE;
    return await http.get(Uri.parse(url), headers: {
      "Authorization": "Token 8b34c604f8c467c5950550f6870bde20dc5229fb"
    });
  }
}
/*class _Api extends StatefulWidget {
   const _Api({Key? key}) : super(key: key);

   @override
   _ApiState createState() => _ApiState();
 }

 class _ApiState extends State<_Api> {
   void _pesquisa()async{
     http.Response response = await http.get(Uri.parse(URl_BASE));

     Map<String, dynamic> retorno = jsonDecode(response.body);

   @override
   Widget build(BuildContext context) {
     return Container();
   }
 }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

class Api {

   void _pesquisa()async{
     http.Response response = await http.get(Uri.parse(URl_BASE));

     Map<String, dynamic> retorno = jsonDecode(response.body);

   }

   pesquisar (String pesquisa) async{

   http.Response response = await http.get(
       //URl_BASE
   );


  }*/
