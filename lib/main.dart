// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:login_task/main_screen.dart';
import 'package:login_task/screen/detail_product/detail_product_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: DetailProductScreen()
        // DefaultTabController(
        //   length: 2,
        //   child: Scaffold(
        //     appBar: AppBar(
        //       title: Text("Contoh Tab Bar"),
        //       bottom: TabBar(
        //         tabs: <Widget>[
        //           Tab(
        //             text: 'Login',
        //           ),
        //           Tab(
        //             text: 'Sign Up',
        //           ),
        //         ],
        //       ),
        //     ),
        //     body: TabBarView(
        //       children: <Widget>[
        //         Center(
        //           child: Text('Tab 1'),
        //         ),
        //         Center(
        //           child: Text('Tab 2'),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        // DetailProductScreen(),
        );
  }
}
