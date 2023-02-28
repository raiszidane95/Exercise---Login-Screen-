import 'package:flutter/material.dart';

import '../../screens/home/home_screen.dart';
import '../../widget/appbar_empty_screen.dart';
import '../../widget/cta_button_widget.dart';
import '../../widget/empty_content_widget.dart';
import '../drawer/shrink_drawer_screen.dart';

class EmptyOrderScreen extends StatelessWidget {
  const EmptyOrderScreen({super.key});

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
              const AppbarEmptyScreen(appBarTitle: 'Orders'),
              const Spacer(),
              const EmptyContentWidget(
                  tittleText: 'No orders yet',
                  messageText:
                      'Hit the orange button down \nbelow to Create an order',
                  asset: "assets/images/cart_image.svg"),
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
