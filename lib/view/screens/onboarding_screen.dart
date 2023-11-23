import 'package:chat_app/controller/onboarding_controller.dart';
import 'package:chat_app/view/widgets/onboarding/onboarding_background.dart';
import 'package:chat_app/view/widgets/onboarding/onboarding_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    OnBoardingControllerImp controller = Get.put(OnBoardingControllerImp());
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const OnBoardingBackground(),
            Align(
              alignment: Alignment.bottomCenter,
              child: OnBoardingContent(controller: controller),
            ),
          ],
        ),
      ),
    );
  }
}

