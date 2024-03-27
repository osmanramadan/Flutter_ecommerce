
import 'package:ecoapp/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
  signUpSuccess();
  
}

class SignUpControllerImp extends SignUpController {
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;

  @override
  signUpSuccess() {
    Get.offNamed(Routes.successSignUp);
  }

  @override
  goToSignIn() {
    Get.offNamed(Routes.login);
  }

  @override
  void onInit() {
    username = TextEditingController() ; 
    phone = TextEditingController() ; 
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
  
  @override
  signUp() {
    // TODO: implement signUp
    throw UnimplementedError();
  }
  
  
}
