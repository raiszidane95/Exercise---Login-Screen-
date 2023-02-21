// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.all(50),
                child: Image.asset("assets/asset1.png"),
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 40, right: 40, bottom: 10, top: 20),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(5),
                      child: Text('Email Address'),
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(5),
                      child: Text('Password'),
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
