import 'package:flutter/material.dart';
import '../widget/appbar_widget.dart';
import 'login_screen.dart';

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
