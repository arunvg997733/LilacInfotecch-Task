import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lilacinfotechtask/application/auth/auth_bloc.dart';
import 'package:lilacinfotechtask/core/constant/constant.dart';
import 'package:lilacinfotechtask/core/constant_fuction/constant_function.dart';
import 'package:lilacinfotechtask/core/firebse_instance/firebase_instance.dart';
import 'package:lilacinfotechtask/core/font_size/font_size.dart';
import 'package:lilacinfotechtask/infrastuture/services/auth_services.dart';
import 'package:lilacinfotechtask/presentation/otp/otp_screen.dart';
import 'package:lilacinfotechtask/presentation/video_player/video_player_screen.dart';
import 'package:lilacinfotechtask/presentation/widget/custom_button/custom_button_widget.dart';
import 'package:lilacinfotechtask/presentation/widget/loading_button/loading_button_widget.dart';
import 'package:lilacinfotechtask/presentation/widget/or_divider/or_divider_widget.dart';
import 'package:lilacinfotechtask/presentation/widget/text/text_widget.dart';
import 'package:lilacinfotechtask/presentation/widget/text_field/text_field_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      kHeight50,
                      Container(),
                      CustomTextWidget(text: "Register", size: xXLFont),
                      kHeight30,
                      Row(
                        children: [
                          Container(
                            height: 49,
                            width: 49,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        Theme.of(context).colorScheme.tertiary),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: CustomTextWidget(
                              text: '+91',
                              size: mFont,
                            )),
                          ),
                          kWidth10,
                          Expanded(
                            child: CustomTextFormField(
                              keyboardType: TextInputType.number,
                              validator: checkFieldEmailIsValid,
                              size: double.infinity,
                              hint: 'Mobile Number',
                              controller: state.mobileNumberCtr,
                            ),
                          ),
                        ],
                      ),
                      kHeight30,
                      state.isLoading
                          ? const LoadingGradientContainer(
                              width: double.infinity)
                          : CustomButton(
                              text: 'Login',
                              width: double.infinity,
                              function: () {
                                context.read<AuthBloc>().add(
                                    AuthEvent.signWithPhoneNumber(
                                        context: context,
                                        number:
                                            '+91${state.mobileNumberCtr.text}'));
                              },
                            ),
                      kHeight30,
                      const OrDividerWidget(),
                      kHeight30,
                      CustomTextWidget(
                          text: "Already have account ?",
                          weight: FontWeight.w500),
                      kHeight10,
                      TextButton(
                        onPressed: () {},
                        child: CustomTextWidget(
                            text: 'Login',
                            color: kBlue,
                            weight: FontWeight.w500),
                      )
                    ],
                  );
                },
              )),
        ),
      ),
    );
  }
}
