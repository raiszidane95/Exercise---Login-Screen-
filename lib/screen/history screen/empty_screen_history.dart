import 'package:flutter/material.dart';

import '../../widget/appbar_empty_screen.dart';
import '../../widget/cta_button_widget.dart';
import '../../widget/empty_content_widget.dart';

class NoHistory extends StatelessWidget {
  const NoHistory({super.key});

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
              // Column(
              //   children: [
              //     SvgPicture.asset("assets/images/history_image.svg"),
              //     Text(
              //       'No history yet',
              //       style: TextStyle(
              //           fontFamily: 'Source Sans Pro',
              //           fontSize: 28,
              //           fontWeight: FontWeight.w600),
              //     ),
              //     Text(
              //       'Hit the orange button down \nbelow to Create an order',
              //       textAlign: TextAlign.center,
              //       style: TextStyle(
              //         fontFamily: 'Source Sans Pro',
              //         fontSize: 17,
              //       ),
              //     ),
              //   ],
              // ),
              const Spacer(),
              const Ctabutton(textTitle: 'Start Ordering')
            ],
          ),
        ),
      ),
    );
  }
}
