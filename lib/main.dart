import 'package:ecoapp/core/localication/changelang.dart';
import 'package:ecoapp/core/localication/translation.dart';
import 'package:ecoapp/core/services/services.dart';
import 'package:ecoapp/routes.dart';
import 'package:ecoapp/view/screen/language.dart';
import 'package:ecoapp/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
     LocaleController controller =   Get.put(LocaleController()) ;
    return GetMaterialApp(
      debugShowCheckedModeBanner:false,
      translations: MyTranslation(),
      locale: controller.language,
      theme: controller.appTheme,
      title: 'Ecommerce App',
      // theme: ThemeData(
      //   textTheme:const TextTheme(
      //     headline1:TextStyle(fontSize:20,fontWeight:FontWeight.bold)
      //   ),
      //   primarySwatch: Colors.blue,
      // ),
      home:const Language(),
      //  home:const onBoarding(),
      routes: routes,
    );
  }
}
