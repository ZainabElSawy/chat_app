import 'package:flutter/material.dart';

class OnBoardingBackground extends StatelessWidget {
  const OnBoardingBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "images/img1.jpg",
      fit: BoxFit.fill,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.64,
    );
  }
}