import 'package:ecoapp/controller/onboardingcontroller.dart';
import 'package:ecoapp/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DotsController extends StatelessWidget {
  const DotsController({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder:(controller)=> Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
            OnBoardingList.length,
            (index) => AnimatedContainer(
                  margin: const EdgeInsets.only(right: 5),
                  duration: const Duration(milliseconds: 900),
                  width:controller.currentPage == index ? 10 : 5,
                  height: 6,
                  decoration: BoxDecoration(
                      color:Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                ))
      ],
    ));
  }
}