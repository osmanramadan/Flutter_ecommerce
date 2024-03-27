
import 'package:ecoapp/controller/auth/login_controller.dart';
import 'package:ecoapp/core/constant/color.dart';
import 'package:ecoapp/view/widget/auth/custombuttonauth.dart';
import 'package:ecoapp/view/widget/auth/customtextbodyauth.dart';
import 'package:ecoapp/view/widget/auth/customtextformauth.dart';
import 'package:ecoapp/view/widget/auth/customtexttitleauth.dart';
import 'package:ecoapp/view/widget/auth/logoauth.dart';
import 'package:ecoapp/view/widget/auth/textsign.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.primaryColor,
        elevation: 0.0,
        title: Text('Sign In',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.backgroundcolor)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const LogoAuth(),
          const SizedBox(height: 20),
          const CustomTextTitleAuth(text: "Welcome Back"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              text:
                  "Sign In With Your Email And Password OR Continue With Social Media"),
          const SizedBox(height: 15),
          CustonTextFormAuth(
            mycontroller: controller.email,
            hinttext: "Enter Your Email",
            iconData: Icons.email_outlined,
            labeltext: "Email",
            // mycontroller: ,
          ),
          CustonTextFormAuth(
            mycontroller: controller.password,
            hinttext: "Enter Your Password",
            iconData: Icons.lock_outline,
            labeltext: "Password",
            // mycontroller: ,
          ),
          InkWell(
            onTap: () {
              controller.goToForgetPassword();
            },
            child: const Text(
              "Forget Password",
              textAlign: TextAlign.end,
            ),
          ),
          CustomButtomAuth(text: "Sign In", onPressed: () {}),
          const SizedBox(height: 40),
          CustomTextSignUpOrSignIn(
            textone: "Don't have an account ? ",
            texttwo: "SignUp",
            onTap: () {
              controller.goToSignUp();
            },
          )
        ]),
      ),
    );
  }
}


// import 'package:ecoapp/core/constant/color.dart';
// import 'package:email_validator/email_validator.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// // import 'package:login_ui/register_screen.dart';

// class Login extends StatefulWidget {
//   const Login({Key? key}) : super(key: key);
  

//   @override
//   State<Login> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<Login> {
//   final _formKey = GlobalKey<FormState>();
//   var rememberValue = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor:AppColor.loginbackground,
//       body: Container(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'Sign in',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 40,
//               ),
//             ),
//             const SizedBox(
//               height: 60,
//             ),
//             Form(
//               key: _formKey,
//               child: Column(
//                 children: [
//                   TextFormField(
//                     validator: (value) => EmailValidator.validate(value!)
//                         ? null
//                         : "Please enter a valid email",
//                     maxLines: 1,
//                     decoration: InputDecoration(
//                       hintText: 'Enter your email',
//                       prefixIcon  : const Icon(Icons.email),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   TextFormField(
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter your password';
//                       }
//                       return null;
//                     },
//                     maxLines: 1,
//                     obscureText: true,
//                     decoration: InputDecoration(
//                       focusColor:Colors.white,
//                       prefixIcon: const Icon(Icons.lock),
//                       hintText: 'Enter your password',
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10)
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       if (_formKey.currentState!.validate()) {}
//                     },
//                     style: ElevatedButton.styleFrom(
//                       padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
//                     ),
//                     child: const Text(
//                       'Sign in',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color:AppColor.grey
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text('Not registered yet?'),
//                       TextButton(
//                         onPressed: () {
//                           // Navigator.pushReplacement(
//                           //   context,
//                           //   MaterialPageRoute(
//                           //     builder: (context) =>
//                           //         const RegisterPage(title: 'Register UI'),
//                           //   ),
//                           // );
//                         },
//                         child: const Text('Create an account'),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
