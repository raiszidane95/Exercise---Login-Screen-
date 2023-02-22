import 'package:flutter/material.dart';
import 'package:login_task/widget/cta_button.dart';

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
                child: Image.asset("assets/No-Internet.png"),
              ),
              Container(
                padding: EdgeInsets.only(top: 26, bottom: 17),
                child: Text(
                  'No Internet Connection',
                  style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 28,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                'Your internet connection is currently not available please check or try again.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 17,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 55),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                            width: 250,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0xffFA4A0C),
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.all(4),
                                textStyle: const TextStyle(fontSize: 16),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Try Again',
                                style: TextStyle(
                                    fontFamily: 'Source Sans Pro',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
