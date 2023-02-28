// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Ctabutton extends StatelessWidget {
  const Ctabutton({
    Key? key,
    required this.textTitle,
    required this.navigationDestination,
  }) : super(key: key);
  final Widget navigationDestination;
  final String textTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 55),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: 70,
              width: 314,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xffFA4A0C),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(4),
                  textStyle: const TextStyle(fontSize: 16),
                ),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return navigationDestination;
                    },
                  ),
                ),
                child: Text(
                  textTitle,
                  style: TextStyle(
                      fontFamily: 'SF Pro',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
