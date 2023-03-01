import 'package:flutter/material.dart';

import '../../widget/appbar_empty_screen.dart';
import '../../widget/cta_button_widget.dart';
import '../../widget/empty_content_widget.dart';
import '../home/home_screen.dart';

class NoHistory extends StatefulWidget {
  const NoHistory({super.key});

  @override
  State<NoHistory> createState() => _NoHistoryState();
}

class _NoHistoryState extends State<NoHistory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffEDEDED),
        body: Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const AppbarEmptyScreen(appBarTitle: 'History'),
              const Spacer(),
              const EmptyContentWidget(
                  tittleText: 'No History',
                  messageText:
                      'Hit the orange button down \nbelow to Create an order',
                  asset: "assets/images/history_image.svg"),
              const Spacer(),
              const Ctabutton(
                  navigationDestination: HomeScreen(),
                  textTitle: 'Start Ordering')
            ],
          ),
        ),
      ),
    );
  }
}
