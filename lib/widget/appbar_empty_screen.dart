import 'package:flutter/material.dart';

class AppbarEmptyScreen extends StatelessWidget {
  const AppbarEmptyScreen({super.key, required this.appBarTitle});
  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Icon(Icons.arrow_back_ios_new),
        ),
        Text(
          appBarTitle,
          style: TextStyle(
              fontFamily: 'Source Sans Pro',
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        Spacer(),
      ],
    );
  }
}
