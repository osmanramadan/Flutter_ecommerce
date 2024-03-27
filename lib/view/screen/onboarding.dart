
import 'package:ecoapp/controller/onboardingcontroller.dart';
import 'package:ecoapp/view/widget/onboarding/dotscontroller.dart';
import 'package:ecoapp/view/widget/onboarding/imageslider.dart';
import 'package:ecoapp/view/widget/onboarding/switchbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {

  const  OnBoarding({super.key});
  

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp()) ; 
    return const Scaffold(
      body: SafeArea(
        child:Column(children: [
           Expanded(
          flex:3,
          child:ImageSlider()
          ),
        Expanded(flex:1,child:Column(children: [
            DotsController(),
            Spacer(flex:2),
            SwitchButton()
        ]))
        ])

      ),
    );

}
}