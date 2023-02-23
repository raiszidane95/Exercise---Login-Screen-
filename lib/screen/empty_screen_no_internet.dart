import 'package:flutter/material.dart';

import '../widget/cta_button_widget.dart';
import '../widget/empty_content_widget.dart';

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEDEDED),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              EmptyContentWidget(
                  tittleText: 'No internet connection',
                  messageText:
                      'Your internet connection is currently not available please check or try again.',
                  asset: "assets/images/no_internet_image.svg"),
              const Spacer(),
              Ctabutton(textTitle: 'Try Again')
            ],
          ),
        ),
      ),
    );
  }
}
