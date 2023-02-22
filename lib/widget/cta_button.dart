import 'package:flutter/material.dart';

class Ctabutton extends StatefulWidget {
  const Ctabutton({super.key});

  @override
  State<Ctabutton> createState() => _CtabuttonState();
}

class _CtabuttonState extends State<Ctabutton> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                    'Login',
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
    );
  }
}
