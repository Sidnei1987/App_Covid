import 'package:http/http.dart ' as http;
import 'dart:convert';
import 'dart:async';
import 'package:digistarts/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'API/api.dart';

class PagLogin extends StatefulWidget {
  const PagLogin({Key? key}) : super(key: key);

  @override
  _PagLoginState createState() => _PagLoginState();
}

class _PagLoginState extends State<PagLogin> {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  void _validateLogin() {
    if (loginController.text == '' && passwordController.text == '') {
      Navigator.pushNamed(context, '/result');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Login ou senha inválido'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [const Color(0xFF33691E), const Color(0xFFF1F8E9)],
          begin: FractionalOffset.topLeft,
          end: FractionalOffset.bottomRight,
        ),
      ),
      alignment: Alignment.center,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(35),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_outline,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(),
                    labelText: "Usuario",
                    labelStyle: TextStyle(decorationColor: Colors.white)),
                controller: loginController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'Senha',
                ),
                controller: passwordController,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  //padding: EdgeInsets.all(15),
                ),
                onPressed: _validateLogin,
                child: Text("Login"),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
