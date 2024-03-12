// import 'package:flutter/material.dart';
// import 'package:lilacinfotechtask/core/constant/constant.dart';
// import 'package:lilacinfotechtask/core/constant_fuction/constant_function.dart';
// import 'package:lilacinfotechtask/core/font_size/font_size.dart';
// import 'package:lilacinfotechtask/presentation/register/register_screen.dart';
// import 'package:lilacinfotechtask/presentation/video_player/video_player_screen.dart';
// import 'package:lilacinfotechtask/presentation/widget/custom_button/custom_button_widget.dart';
// import 'package:lilacinfotechtask/presentation/widget/icon/icon_widget.dart';
// import 'package:lilacinfotechtask/presentation/widget/or_divider/or_divider_widget.dart';
// import 'package:lilacinfotechtask/presentation/widget/text/text_widget.dart';
// import 'package:lilacinfotechtask/presentation/widget/text_field/text_field_widget.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         resizeToAvoidBottomInset: false,
//         body: SingleChildScrollView(
//           child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 children: [
//                   kHeight50,
//                   CustomTextWidget(text: "Login", size: xXLFont),
//                   kHeight30,
//                   CustomTextFormField(
//                     validator: checkFieldEmailIsValid,
//                     size: double.infinity,
//                     hint: 'Email',
//                   ),
//                   kHeight20,
//                   CustomTextFormField(
//                     validator: checkFieldEmpty,
//                     size: double.infinity,
//                     hint: 'Password',
//                     obscureText: true,
//                     maxLine: 1,
//                   ),
//                   kHeight30,

//                   TextButton(
//                     onPressed: () {},
//                     child: CustomTextWidget(
//                         text: 'Forgot password',
//                         color: kBlue,
//                         weight: FontWeight.w500),
//                   ),
//                   kHeight30,
//                   // state.isLoading
//                   //     ? const LoadingGradientContainer(width: double.infinity)
//                   CustomButton(
//                     text: 'Login',
//                     width: double.infinity,
//                     function: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const VideoPlayerScreen(),
//                           ));
//                     },
//                   ),
//                   kHeight30,
//                   const OrDividerWidget(),
//                   kHeight30,
//                   CustomTextWidget(
//                       text: "Don't have an account", weight: FontWeight.w500),
//                   kHeight10,
//                   TextButton(
//                     onPressed: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const RegisterScreen(),
//                           ));
//                     },
//                     child: CustomTextWidget(
//                         text: "Register",
//                         color: kBlue,
//                         weight: FontWeight.w500),
//                   )
//                 ],
//               )),
//         ),
//       ),
//     );
//   }
// }
