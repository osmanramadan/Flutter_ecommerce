import 'package:ecoapp/controller/onboardingcontroller.dart';
import 'package:ecoapp/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SwitchButton extends GetView<OnBoardingControllerImp>{
  const SwitchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 40,
      child: MaterialButton(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
          textColor: Colors.white,
          onPressed: () {
            controller.next() ;
          },
          color:AppColor.primaryColor,
          child: const Text("Continue")),
    );
  }
}