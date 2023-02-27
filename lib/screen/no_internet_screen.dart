import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../screens/home/home_screen.dart';
import '../widget/cta_button_widget.dart';

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
              Container(
                alignment: Alignment.center,
                child: SvgPicture.asset("assets/images/no_internet_image.svg"),
              ),
              Container(
                padding: EdgeInsets.only(top: 26, bottom: 17),
                child: Text(
                  'No Internet Connection',
                  style: TextStyle(
                      fontFamily: 'SF Pro',
                      fontSize: 28,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                'Your internet connection is currently not available please check or try again.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'SF Pro',
                  fontSize: 17,
                ),
              ),
              Ctabutton(
                  navigationDestination: HomeScreen(), textTitle: 'Try Again')
            ],
          ),
        ),
      ),
    );
  }
}
