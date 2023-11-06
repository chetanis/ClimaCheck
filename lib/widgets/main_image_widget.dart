import 'package:flutter/material.dart';

class MainImageWidget extends StatelessWidget {
  const MainImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/starrymountain.png'), fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          margin: const EdgeInsets.fromLTRB(0, 100, 0, 0),
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('images/House.png'),
          )),
          child: Container()
        ),
      ),
    );
  }
}