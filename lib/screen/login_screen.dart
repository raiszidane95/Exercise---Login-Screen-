// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login_task/widget/cta_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(
            left: 40,
            right: 40,
            bottom: 10,
          ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(5),
                child: Text(
                  'Email Address',
                  style: TextStyle(fontFamily: 'Source Sans Pro', fontSize: 16),
                ),
              ),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
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
                child: Text(
                  'Password',
                  style: TextStyle(fontFamily: 'Source Sans Pro', fontSize: 16),
                ),
              ),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 30, right: 40),
          alignment: Alignment.centerLeft,
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Color(0xffFA4A0C),
              padding: EdgeInsets.all(16.0),
              textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Source Sans Pro'),
            ),
            onPressed: () {
              print('Password Changed!');
            },
            child: const Text('Forgot Password?'),
          ),
        ),
        const SizedBox(height: 75),
        Ctabutton(
          textTitle: 'Login',
        )
      ],
    );
  }
}
