import 'package:flutter/material.dart';
import 'package:login_task/screen/login%20screen/login_screen.dart';

import '../widget/appbar_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: const Color(0xffF6F6F9),
          body: SafeArea(
            child: Column(
              children: [MyAppBar(), LoginScreen()],
            ),
          ),
        ),
      ),
    );
  }
}
