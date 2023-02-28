import 'package:flutter/material.dart';

import '../../utilities/color_schema.dart';
import '../../widget/cta_button_widget.dart';
import '../../widget/empty_content_widget.dart';
import '../drawer/shrink_drawer_screen.dart';

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
        appBar: AppBar(
          elevation: 0,
          backgroundColor: background,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.grey[400],
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            'History',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: const Color(0xffEDEDED),
        body: Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Spacer(),
              const EmptyContentWidget(
                  tittleText: 'No History',
                  messageText:
                      'Hit the orange button down \nbelow to Create an order',
                  asset: "assets/images/history_image.svg"),
              const Spacer(),
              const Ctabutton(
                  navigationDestination: MyHomePage(title: 'Food Delivery App'),
                  textTitle: 'Start Ordering')
            ],
          ),
        ),
      ),
    );
  }
}
