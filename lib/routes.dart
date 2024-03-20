import 'package:ecoapp/core/constant/routes.dart';
import 'package:ecoapp/view/screen/auth/login.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  Routes.login: (context) => const Login()
};