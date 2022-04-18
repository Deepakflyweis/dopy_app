
import 'package:flutter/material.dart';


class BackgroundScreen extends StatelessWidget {
  Widget child;

    BackgroundScreen({
     required this.child,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: -220,
            left: -280,
            child: Container(
              width: 580,
              height: 491,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/1.png"))),
            )),
        Positioned(
            top: -40,
            right: -85,
            child: Container(
              width: 400,
              height: 350,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/2.png"))),
            )),
        Positioned(
            top: 430,
            left: -100,
            child: Container(
              width: 580,
              height: 491,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/3.png"))),
            )),
        Positioned(
            top: 420,
            right: -35,
            child: Container(
              width: 400,
              height: 350,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/4.png"))),
            )
        ),
        Center(child: child,)
      ],
    );
  }
}
