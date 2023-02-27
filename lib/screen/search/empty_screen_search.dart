import 'package:flutter/material.dart';

import '../../widget/empty_content_widget.dart';

class EmptySearchScreen extends StatelessWidget {
  const EmptySearchScreen({super.key});

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
              Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new)),
                  SizedBox(
                    height: 30,
                    width: 200,
                    child: TextFormField(
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                    ),
                  )
                ],
              ),
              const Spacer(),
              const EmptyContentWidget(
                  tittleText: 'Item not found',
                  messageText:
                      'Try searching the item with \na different keyword.',
                  asset: "assets/images/search_image.svg"),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
