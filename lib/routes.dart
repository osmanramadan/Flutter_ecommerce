
import 'package:ecoapp/core/constant/routes.dart';
import 'package:ecoapp/view/screen/auth/forgetpassword.dart';
import 'package:ecoapp/view/screen/auth/login.dart';
import 'package:ecoapp/view/screen/auth/resetpassword.dart';
import 'package:ecoapp/view/screen/auth/signup.dart';
import 'package:ecoapp/view/screen/auth/success_resetpassword.dart';
import 'package:ecoapp/view/screen/auth/success_signup.dart';
import 'package:ecoapp/view/screen/auth/verifycode.dart';
import 'package:ecoapp/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  // Auth
  Routes.login: (context) => const Login(),
  Routes.signUp: (context) => const SignUp(),
  Routes.forgetPassword: (context) => const ForgetPassword(),
  Routes.verfiyCode: (context) => const VerfiyCode(),
  Routes.resetPassword: (context) => const ResetPassword(),
  Routes.successResetpassword: (context) => const SuccessResetPassword(),
  Routes.successSignUp: (context) => const SuccessSignUp(),
  // OnBoarding
  Routes.onBoarding: (context) =>  OnBoarding(),
};

// import 'package:ecoapp/core/constant/routes.dart';
// import 'package:ecoapp/view/screen/auth/login.dart';
// import 'package:ecoapp/view/screen/onboarding.dart';
// import 'package:flutter/material.dart';

// Map<String, Widget Function(BuildContext)> routes = {
//   Routes.login: (context) => const Login(),
//   Routes.onBoarding: (context) => const onBoarding(),

// };