import 'package:ecoapp/controller/onboardingcontroller.dart';
import 'package:ecoapp/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ImageSlider extends  GetView<OnBoardingControllerImp>{
  const ImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return  PageView.builder(
          controller:controller.pageController,
          onPageChanged: (val){
           controller.onPageChanged(val) ; 
         },
          itemCount: OnBoardingList.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  OnBoardingList[index].title!,
                  style:const TextStyle(fontWeight:FontWeight.bold,fontSize: 20),
                ),
                const SizedBox(height:5),
                Image.asset(OnBoardingList[index].image!,height:200,width:300,fit:BoxFit.fill),
                const SizedBox(height:70),
                Container(
                  width: double.infinity,
                  alignment:Alignment.center,
                  child:Text(OnBoardingList[index].body!,textAlign:TextAlign.center))
              ],
            );
          },
        );
  }
}