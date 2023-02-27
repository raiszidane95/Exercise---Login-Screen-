// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:login_task/screen/detail_product/detail_product_screen.dart';
import 'package:login_task/screen/search/empty_screen_search.dart';
import 'package:login_task/widget/empty_content_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: EmptySearchScreen());
  }
}
