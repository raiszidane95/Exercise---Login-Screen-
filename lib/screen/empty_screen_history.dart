import 'package:flutter/material.dart';

import '../widget/cta_button.dart';

class NoHistory extends StatelessWidget {
  const NoHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffEDEDED),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.chevron_left),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'History',
                          style: TextStyle(fontSize: 18),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Image.asset("assets/No-History.png"),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'No history yet',
                      style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          fontSize: 28,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Text(
                    'Hit the orange button down \nbelow to Create an order',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              Ctabutton(textTitle: 'Try Again')
            ],
          ),
        ),
      ),
    );
  }
}
