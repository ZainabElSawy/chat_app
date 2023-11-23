import 'package:chat_app/controller/onboarding_controller.dart';
import 'package:chat_app/view/widgets/custombutton.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OnBoardingContent extends StatelessWidget {
  OnBoardingControllerImp controller;

  OnBoardingContent({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.37,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(70), topLeft: Radius.circular(70))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Enjoy the new experience of chatting with Global friends",
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            "Connect people around the world for free",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 25),
          CustomButton(
              text: "Get Started", onPressed: () => controller.goToLogin()),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Powered by "),
              Image.asset("images/logo.jpg")
            ],
          )
        ],
      ),
    );
  }
}
